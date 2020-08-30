# frozen_string_literal: true

require "test_helper"

class Playground::Products::SpecificationCellTest < Cell::TestCase
  test "show" do
    html = cell("playground/products/specification", nil).(:show)
    assert html.has_css?(".p-products-specification")
  end
end
