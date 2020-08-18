# frozen_string_literal: true

require "test_helper"

class Playground::Products::GalleryCellTest < Cell::TestCase
  test "show" do
    model = ProductMock.new.images
    html = cell("playground/products/gallery", model).(:show)
    assert html.has_css?(".p-products-gallery")
  end
end
