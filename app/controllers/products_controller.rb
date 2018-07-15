class ProductsController < ApplicationController
  def index
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(products_params)
  end

  def edit
  end

  private

   def products_params
     params.require(:product).permit(:title, :description)
end
