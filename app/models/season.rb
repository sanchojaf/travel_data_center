class Season < ActiveRecord::Base
  belongs_to :hotel_info, :inverse_of => :seasons
  attr_accessible :name
  
  has_many :range_dates, :dependent => :destroy, :inverse_of => :season
  attr_accessible :range_dates_attributes, :allow_destroy => true
  accepts_nested_attributes_for :range_dates, :allow_destroy => true
  
  has_many :rates, :dependent => :destroy, :inverse_of => :season
  attr_accessible :rates_attributes, :allow_destroy => true
  accepts_nested_attributes_for :rates, :allow_destroy => true


  rails_admin do		
    field :name
		field  :rates do
			help 'The rates of the Season'
		end 							
		field  :range_dates do
			help 'The range_dates of the Season'
		end 	
	end

end
