class Booking < ActiveRecord::Base

  def start_time
    event_start_time
  end

end
