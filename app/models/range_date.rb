class RangeDate < ActiveRecord::Base
  attr_accessible :end, :start
  belongs_to :season, :inverse_of => :range_dates
end
