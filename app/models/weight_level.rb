class WeightLevel < ActiveRecord::Base
  validates_presence_of :max, :cost
  validates_uniqueness_of :max
end
