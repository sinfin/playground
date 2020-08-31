# frozen_string_literal: true

require "test_helper"

class Playground::Products::InstagramCellTest < Cell::TestCase
  test "show" do
    html = cell("playground/products/instagram", nil).(:show)
    assert html.has_css?(".p-products-instagram")
  end
end
