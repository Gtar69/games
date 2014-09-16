class ProductController < ApplicationController
  def index
    @product = Product.order("id DESC")
  end
end
