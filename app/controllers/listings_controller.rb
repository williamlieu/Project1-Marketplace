class ListingsController < ApplicationController

  def new
    @listing = Listing.new
  end

  def create
    listing = @current_user.listings.create listing_params
    redirect_to root_path
  end

  private
  def listings_params
    params.require(:listing).permit(:)
end
