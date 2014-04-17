class BookingsController < ApplicationController

  def index
    @bookings = Booking.all
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @listing = Listing.find(@booking.listing_id)
    if @booking.save
      flash[:notice] = "Your booking has been saved"
      redirect_to owner_listing_path(@booking.owner_id, @listing.id)
    else
      render "new"
    end
  end


  private
  def booking_params
    params.require(:booking).permit(:owner_id, :start_time, :end_time, :listing_id)
  end
end
