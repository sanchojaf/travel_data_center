class ContextRate < ActiveRecord::Base
  attr_accessible :price
  belongs_to :rate, :inverse_of => :context_rates
  
  has_many :pax_contexts, :dependent => :destroy, :inverse_of => :context_rate
  attr_accessible :pax_contexts_attributes, :allow_destroy => true
  accepts_nested_attributes_for :pax_contexts, :allow_destroy => true

  rails_admin do	
    field :price	
	field  :pax_contexts do
		help 'The pax_contexts of the ContextRate'
	end 		    
  end
end
