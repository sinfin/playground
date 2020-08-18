# frozen_string_literal: true

class HomeController < ApplicationController
  def index
    @product_mock = ProductMock.new
  end
end
