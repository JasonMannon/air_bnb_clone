class OwnersController < ApplicationController

  def index
    @owners = Owner.all
    @owner = Owner.new
  end

  def show
    @owner = Owner.find(params[:id])
    @booking = Booking.find_by(:owner_id => @owner.id)
    @listing = Listing.find_by(:id => @booking.listing_id)
  end

end
