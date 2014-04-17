class Listing < ActiveRecord::Base
  belongs_to :owner
  has_many :photos
  has_many :bookings

end
