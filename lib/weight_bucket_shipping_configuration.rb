class WeightBucketShippingConfiguration < Configuration
  preference :unit_multiplier, :float, :default => 1 # assumes variant weights are in lbs, so stay in lbs
end
