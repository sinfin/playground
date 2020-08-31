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

  def price
    39
  end

  def sizes
    [
      {
        label: "17 x 17 cm",
        value: "17_17",
      },
      {
        label: "20 x 20 cm",
        value: "20_20",
        selected: true
      },
      {
        label: "30 x 20 cm",
        value: "30_20",
      }
    ]
  end

  def styles
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
      },
    ]
  end

  def colors
    [
      {
        value: "#515652",
      },
      {
        value: "#FFFFFF",
        addBorder: true
      },
      {
        value: "#53C1B9",
        selected: true
      },
      {
        value: "#D2486A",
      },
      {
        value: "#FED74D",
      },
      {
        value: "#50354A",
      },
      {
        value: "#F89CA1",
      },
      {
        value: "#849CB1",
      },
      {
        value: "#D89A36",
      },
    ]
  end

  def related
    [
      {
        name: "Fotky polaroidky",
        imageUrl: "https://picsum.photos/id/1/360/240",
        price: "9",
      },
      {
        name: "Magnetické vzpomínky",
        imageUrl: "https://picsum.photos/id/10/360/240",
        price: "39",
      },
      {
        name: "Plakáty",
        imageUrl: "https://picsum.photos/id/20/360/240",
        price: "780",
      },
    ]
  end

  def instagram
    [
      {
        name: "Fotky polaroidky",
        imageUrl: "https://picsum.photos/id/1/262/262",
      },
      {
        name: "Magnetické vzpomínky",
        imageUrl: "https://picsum.photos/id/10/262/262",
      },
      {
        name: "Plakáty",
        imageUrl: "https://picsum.photos/id/20/262/262",
      },
      {
        name: "Blahbla",
        imageUrl: "https://picsum.photos/id/30/262/262",
      },
    ]
  end
end
