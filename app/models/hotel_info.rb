class HotelInfo < ActiveRecord::Base
  attr_accessible :hotel_status, :latitude, :longitude, :when_built
end
