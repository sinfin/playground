# frozen_string_literal: true

require "test_helper"

class Playground::Products::ColorsCellTest < Cell::TestCase
  test "show" do
    html = cell("playground/products/colors", nil).(:show)
    assert html.has_css?(".p-products-color")
  end
end
