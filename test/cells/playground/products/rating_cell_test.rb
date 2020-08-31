# frozen_string_literal: true

require "test_helper"

class Playground::Products::RatingCellTest < Cell::TestCase
  test "show" do
    html = cell("playground/products/rating", nil).(:show)
    assert html.has_css?(".p-products-rating")
  end
end
