class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def show
    @product = Product.find params[:id]
  end

  def edit
    @product = Product.find params[:id]
  end

  def update
    product = Product.find params[:id]
    product.update product_params
    redirect_to product
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.create products_params
    redirect_to product_path
  end

  def destroy
    product = Product.find params[:id]
    product.destoy
    redirect_to products_paths
  end

  private

   def product_params
     params.require(:product).permit(:title, :description)
   end
end
