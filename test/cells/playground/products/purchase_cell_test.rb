# frozen_string_literal: true

require "test_helper"

class Playground::Products::PurchaseCellTest < Cell::TestCase
  test "show" do
    html = cell("playground/products/purchase", nil).(:show)
    assert html.has_css?(".p-products-purchase")
  end
end
