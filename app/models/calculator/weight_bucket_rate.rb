class Calculator::WeightBucketRate < Calculator
  def self.description
    I18n.t("weight_bucket_rate")
  end

  def self.register
    super
    ShippingMethod.register_calculator(self)
    ShippingRate.register_calculator(self)
  end

  def compute(line_items)
    cost = nil
    weight = Spree::WeightBucketShipping::Config[:unit_multiplier] * line_items.inject(0) { |weight, item| weight + item.quantity * item.variant.weight.to_f }

    # TODO: Add caching to WeightLevel retrieval?
    WeightLevel.all( :order => "max DESC").each { |weight_level| cost = weight_level.cost if weight < weight_level.max }

    cost
  end

  def available?(order)
    true
    # not available for orders over 1 lb
  end
end
