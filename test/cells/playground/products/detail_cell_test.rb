# frozen_string_literal: true

require "test_helper"

class Playground::Products::DetailCellTest < Cell::TestCase
  test "show" do
    model = ProductMock.new
    html = cell("playground/products/detail", model).(:show)
    assert html.has_css?(".p-products-detail")
  end
end
