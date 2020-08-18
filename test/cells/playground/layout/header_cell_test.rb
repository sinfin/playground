# frozen_string_literal: true

require "test_helper"

class Playground::Layout::HeaderCellTest < Cell::TestCase
  test "show" do
    html = cell("playground/layout/header", nil).(:show)
    assert html.has_css?(".p-layout-header")
  end
end
