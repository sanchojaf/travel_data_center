class HotelInfoController < ApplicationController
	before_filter :authenticate_user!


   # GET /hotel_infos
  # GET /hotel_infos.json
  def index
    @hotel_infos = HotelInfo.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @hotel_infos }
    end
  end

end
