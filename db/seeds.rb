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

Folio::Page::Cookies.create!(title: "Používání cookies",
                             slug: "cookies",
                             locale: "cs",
                             published: true,
                             published_at: Time.zone.now)

Folio::Atom::Text.create(placement: Folio::Page::Cookies.instance,
                         content: "<p>Cookies jsou malé textové soubory obsahující krátké údaje, které mohou být při návštěvě webové stránky uloženy do zařízení uživatele. Na našich webových stránkách používáme soubory cookie, které slouží k následujícím účelům:</p><ul><li>zapamatování si přihlášeného uživatele,</li><li>komfortní funkce webu,</li><li>vyhodnocování pohybu uživatelů po webu,</li><li>získávání dobrovolné zpětné vazby od uživatelů,</li><li>personalizace zobrazování reklam.</li></ul><p>Veškeré osobní údaje jsou zpracovány zákonným a transparentním způsobem a jsou vyžadovány pouze přiměřené, relevantní a nezbytné údaje ve vztahu k účelu zpracování. Vaše osobní údaje bezpečně ukládáme a neprodáváme je třetím stranám. Abychom Vám mohli nabízet ten nejlepší obsah přesně na míru, tak používáme kvalitní nástroje třetích stran. Tyto nástroje některé Vaše osobní údaje zpracovávají výhradně za účelem výroby a odeslání zakázek, doručení zásilek, cíleného oslovení nebo pro zlepšení kvality našich služeb. Jedná se o tyto služby:<br></p><ul><li>Facebook Ireland Limited - on-line reklama</li><li>Google Ireland Limited – Analýza chování na webu, on-line reklama v síti Adwords</li><li>Seznam.cz, a.s. - on-line reklama v síti Sklik</li><li>Mailchimp, US – E-mail marketing</li></ul>")
