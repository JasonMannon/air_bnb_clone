class ListingsController < ApplicationController

  def index
    @listings = Listing.all
    @owner = Owner.find(current_owner.id)
  end

  def show
    @listing = Listing.find(params[:id])

  end

  def new
    @listing = Listing.new
  end

  def create
    @listing = Listing.new(listing_params)
    if @listing.save
      respond_to do |format|
        format.html { redirect_to listings_url }
        format.js
      end
    end
  end

  private
  def listing_params
    params.require(:listing).permit(:title, :owner_id, :description, :price, :location)
  end
end
