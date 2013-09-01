class HotelInfosController < ApplicationController
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

  # GET /hotel_infos
  # GET /hotel_infos.json
  def index_temp
    @hotel_infos = HotelInfo.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @hotel_infos }
    end
  end
  
    # GET /hotel_infos/1
  # GET /hotel_infos/1.json
  def show
    @hotel_info = HotelInfo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @hotel_info }
    end
  end

  # GET /hotel_infos/new
  # GET /hotel_infos/new.json
  def new
    @hotel_info = HotelInfo.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @hotel_info }
    end
  end

  # GET /hotel_infos/1/edit
  def edit
    @hotel_info = HotelInfo.find(params[:id])
  end

  # POST /hotel_infos
  # POST /hotel_infos.json
  def create
    @hotel_info = HotelInfo.new(params[:hotel_info])

    respond_to do |format|
      if @hotel_info.save
        format.html { redirect_to @hotel_info, :notice => 'Hotel info was successfully created.' }
        format.json { render :json => @hotel_info, :status => :created, :location => @hotel_info }
      else
        format.html { render :action => "new" }
        format.json { render :json => @hotel_info.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /hotel_infos/1
  # PUT /hotel_infos/1.json
  def update
    @hotel_info = HotelInfo.find(params[:id])

    respond_to do |format|
      if @hotel_info.update_attributes(params[:hotel_info])
        format.html { redirect_to @hotel_info, :notice => 'Hotel info was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @hotel_info.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /hotel_infos/1
  # DELETE /hotel_infos/1.json
  def destroy
    @hotel_info = HotelInfo.find(params[:id])
    @hotel_info.destroy

    respond_to do |format|
      format.html { redirect_to hotel_infos_url }
      format.json { head :no_content }
    end
  end


end
