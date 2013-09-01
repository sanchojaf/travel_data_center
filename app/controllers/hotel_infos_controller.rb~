class HotelInfosController < ApplicationController
	before_filter :authenticate_user!

  def index
    @hotel_infos = HotelInfo.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @hotel_infos }
    end
  end

end
