# frozen_string_literal: true

require "test_helper"

class Playground::Products::InfoCellTest < Cell::TestCase
  test "show" do
    html = cell("playground/products/info", nil).(:show)
    assert html.has_css?(".p-products-info")
  end
end
