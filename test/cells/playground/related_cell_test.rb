# frozen_string_literal: true

require "test_helper"

class Playground::RelatedCellTest < Cell::TestCase
  test "show" do
    html = cell("playground/related", nil).(:show)
    assert html.has_css?(".p-related")
  end
end
