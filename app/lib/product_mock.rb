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

  def sizes
    [
      {
        label: "17 x 17 cm",
        value: "17_17",
        selected: false
      },
      {
        label: "20 x 20 cm",
        value: "20_20",
        selected: true
      },
      {
        label: "30 x 20 cm",
        value: "30_20",
        selected: false
      }
    ]
  end

  def style
    [
      {
        label: "Papírová obálka s potiskem",
        imageUrl: "https://picsum.photos/id/1/54/54",
        value: "a",
        selected: true
      },
      {
        label: "Papírová obálka s potiskem přímo na kartonu",
        imageUrl: "https://picsum.photos/id/10/54/54",
        value: "a",
        selected: true
      },
    ]
  end
end
