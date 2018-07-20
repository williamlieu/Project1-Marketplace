class ProductsController < ApplicationController


  def index
    # @products = Product.all.order("created_at DESC")
    if @current_user.present?
    @products = @current_user.products.order("created_at DESC")
  else
    @products = Product.all.order("created_at DESC")
  end
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
    cloudinary = Cloudinary::Uploader.upload( params[ "product" ][ "image" ] )
    product.image = cloudinary["url"]
    product.save
    redirect_to product
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new product_params
    cloudinary = Cloudinary::Uploader.upload( params[ "product" ][ "image" ] )
    @product.image = cloudinary["url"]
    if @product.save
      redirect_to product_path(@product)
    else
      render :new
    end
  end

  def destroy
    product = Product.find params[:id]
    product.destroy
    redirect_to products_path
   end

  private

   def product_params
     params.require(:product).permit(:title, :description, :price)
   end
end
