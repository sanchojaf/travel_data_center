class PaxContext < ActiveRecord::Base
  belongs_to :context_rate, :inverse_of => :pax_contexts
  
  has_many :paxs, :dependent => :destroy, :inverse_of => :pax_context
  attr_accessible :paxs_attributes, :allow_destroy => true
  accepts_nested_attributes_for :paxs, :allow_destroy => true

  rails_admin do		    
	field  :paxs do
		help 'The paxs of the ContextPax'
	end 		    
  end

end
