class Pax < ActiveRecord::Base
  attr_accessible :name, :value
  belongs_to :context_pax, :inverse_of => :paxes
end
