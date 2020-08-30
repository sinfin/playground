# frozen_string_literal: true

require "test_helper"

class Playground::Products::TextCellTest < Cell::TestCase
  test "show" do
    html = cell("playground/products/text", nil).(:show)
    assert html.has_css?(".p-products-text")
  end
end
