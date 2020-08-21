# frozen_string_literal: true

class ProductMock < OpenStruct
  def title
    "Fotokniha s lehkými listy"
  end

  def perex
    "<p class=\"lead\">Print square and round sticky photo magnets from your Instagram, mobile or computer on high-quality photograph paper. Place them on your fridge or give them as a gift!</p>"
  end

  def images
    Folio::Image.limit(5)
  end
end
