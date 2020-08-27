# frozen_string_literal: true

class Playground::Products::InfoCell < ApplicationCell
  def size_selected
    model.sizes.find { |item| item[:selected] == true }
  end

  def style_selected
    model.styles.select { |item| item[:selected] == true }
  end

  def color_selected
    model.colors.select { |item| item[:selected] == true }
  end
end
