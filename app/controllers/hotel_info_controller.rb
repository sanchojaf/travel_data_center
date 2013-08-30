class HotelInfoController < ApplicationController
  def index
    @hotel_infos = HotelInfo.all
    respond_to do |format|
      format.html # index.html.erb            
    end
  end  
end
