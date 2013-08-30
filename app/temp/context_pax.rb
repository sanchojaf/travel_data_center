class ContextPax < ActiveRecord::Base
  belongs_to :context_rate, :inverse_of => :context_paxes
  
  has_many :paxes, :dependent => :destroy, :inverse_of => :context_pax
  attr_accessible :paxes_attributes, :allow_destroy => true
  accepts_nested_attributes_for :paxes, :allow_destroy => true

  rails_admin do		
	field  :paxes do
		help 'The paxs of the ContextPax'
	end 		    
  end

end
