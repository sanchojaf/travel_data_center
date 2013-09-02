class Pax < ActiveRecord::Base
  attr_accessible :name, :quantity  
  belongs_to :pax_context, :inverse_of => :paxs
  rails_admin do
		field  :name
		field  :quantity						
	end	
end
