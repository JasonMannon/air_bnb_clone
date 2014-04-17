class BookingsController < ApplicationController

  def index
    @bookings = Booking.all
  end

  def create
    @booking = Booking.new(booking_params)
    if @booking.save
      redirect_to root_url
    else
      render "new"
    end
  end


  private
  def booking_params
    params.require(:booking).permit(:owner_id, :start_time)
  end



end
