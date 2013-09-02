class ContextRate < ActiveRecord::Base
  attr_accessible :price
  has_and_belongs_to_many :rooms
  belongs_to :rate, :inverse_of => :context_rates  
  
  has_many :pax_contexts, :dependent => :destroy, :inverse_of => :rate
  attr_accessible :pax_context_ids  
  
  rails_admin do
		field  :price
		field  :pax_context_ids		
	end	
end
