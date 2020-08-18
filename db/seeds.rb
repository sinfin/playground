# frozen_string_literal: true

def force_destroy(klass)
  klass.find_each { |o| o.try(:force_destroy=, true); o.destroy! }
end

Folio::Account.destroy_all
Folio::Atom::Base.destroy_all
Folio::File.destroy_all
force_destroy Folio::Menu
force_destroy Folio::Page
force_destroy Folio::Site

def unsplash_pic(square = false)
  image = Folio::Image.new
  image.file_url = 'https://unsplash.it/2560/#{square ? 2560 : 1440}/?random'
  image.save!
  image
end

if Rails.env.development?
  Folio::Account.create!(email: "test@test.test",
                         password: "test@test.test",
                         role: :superuser,
                         first_name: "Test",
                         last_name: "Dummy")
end

site = Folio::Site.new(title: "playground",
                       domain: "playground.localhost",
                       locale: "cs",
                       locales: ["cs"],
                       email: "foo@bar.baz",
                       phone: "+420 123 456 789",
                       social_links: {
                         facebook: "https://www.facebook.com/playground/",
                         google_map: "https://www.google.com/maps",
                       },
                       address: "foo 123\n123 45 bar")
site.save!

5.times { unsplash_pic }
