class Rate < ActiveRecord::Base
  attr_accessible :name  
  belongs_to :range_date,:inverse_of => :rates
  has_many :context_rates, :dependent => :destroy, :inverse_of => :rate  
  attr_accessible :context_rate_ids
	rails_admin do
		field  :name
		field  :context_rates		
	end	
end
