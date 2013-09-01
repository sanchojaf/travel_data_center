class Contact < ActiveRecord::Base
  belongs_to :hotel_info, :dependent => :destroy, :inverse_of => :contact
  attr_accessible :alternative_phone, :email, :fax, :google_map_url, :hotel_info_id, :phone, :web
end
