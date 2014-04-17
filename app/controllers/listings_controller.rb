class ListingsController < ApplicationController

  def index
    @listings = Listing.all
    @owner = Owner.find(params[:owner_id])
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

  def update
    @listing = Listing.find(params[:id])
    if @listing.update(listing_params)
      respond_to do |format|
        format.html { redirect_to listings_url }
        format.js
      end
    end
  end

  def destroy
    @listing = Listing.find(params[:id])
    @listing.destroy
  end

  private
  def listing_params
    params.require(:listing).permit(:title, :owner_id, :description, :price, :location)
  end
end
