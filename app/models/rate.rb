class Rate < ActiveRecord::Base
  attr_accessible :name
  belongs_to :season, :inverse_of => :rates
  
  has_many :context_rates, :dependent => :destroy, :inverse_of => :rate
  attr_accessible :context_rates_attributes, :allow_destroy => true
  accepts_nested_attributes_for :context_rates, :allow_destroy => true


  rails_admin do		
    field :name
	field  :context_rates do
		help 'The context_rates of the Rate'
	end 		
    
   end
end
