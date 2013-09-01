class RangeDate < ActiveRecord::Base
  belongs_to :season, :dependent => :destroy, :inverse_of => :range_dates
  attr_accessible :end, :start  
end
