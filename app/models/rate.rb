class Rate < ActiveRecord::Base
  attr_accessible :name  
  has_many :context_rates, :dependent => :destroy, :inverse_of => :rate
  attr_accessible :context_rate_ids
end
