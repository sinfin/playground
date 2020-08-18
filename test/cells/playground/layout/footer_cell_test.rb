# frozen_string_literal: true

require "test_helper"

class Playground::Layout::FooterCellTest < Cell::TestCase
  test "show" do
    html = cell("playground/layout/footer", nil).(:show)
    assert html.has_css?(".p-layout-footer")
  end
end
