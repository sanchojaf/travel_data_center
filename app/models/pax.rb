class Pax < ActiveRecord::Base
  attr_accessible :name, :quantity  
  belongs_to :pax_context, :inverse_of => :paxs
end
