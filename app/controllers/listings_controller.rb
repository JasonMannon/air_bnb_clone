class ListingsController < ApplicationController

  def index
    @listings = Listing.all
    @listing = Listing.new
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
        format.html { redirect_to owner_listings_path(@listing.owner) }
        format.js { render owner_listings_path(@listing.owner) }
      end
    end
  end

  def edit
    @listing = Listing.find(params[:id])
  end

  def update
    @listing = Listing.find(params[:id])
    if @listing.update(listing_params)
      respond_to do |format|
        format.html { redirect_to "/owners/#{@listing.owner_id}/listings/#{@listing.id}" }
        format.js { render '/owners/#{@listing.owner_id}/listings/#{@listing.id}' }
      end
    end
  end

  def destroy
    @listing = Listing.find(params[:id])
    @listing.destroy
    redirect_to "/owners/#{@listing.owner_id}/listings"
  end

  private
  def listing_params
    params.require(:listing).permit(:title, :owner_id, :description, :price, :location)
  end
end
