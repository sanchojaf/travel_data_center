class PaxContext < ActiveRecord::Base
  belongs_to :context_rate, :inverse_of => :pax_contexts  
  has_many :paxs, :dependent => :destroy, :inverse_of => :pax_context
  attr_accessible :pax_ids, :allow_destroy => true
  rails_admin do
		field  :paxs	
	end	
end
