class WeightBucketShippingExtension < Spree::Extension
  version "1.0"
  description "Describe your extension here"
  url "http://yourwebsite.com/weight_bucket_shipping"

  def activate
    [
      Calculator::WeightBucketRate,
    ].each(&:register)
  end
end
