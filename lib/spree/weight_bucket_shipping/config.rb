module Spree
  module WeightBucketShipping
    # Singleton class to access the shipping configuration object (WeightBucketShippingConfiguration.first by default) and it's preferences.
    #
    # Usage:
    #   Spree::WeightBucketShipping::Config[:foo]                  # Returns the foo preference
    #   Spree::WeightBucketShipping::Config[]                      # Returns a Hash with all the tax preferences
    #   Spree::WeightBucketShipping::Config.instance               # Returns the configuration object (WeightBucketShippingConfiguration.first)
    #   Spree::WeightBucketShipping::Config.set(preferences_hash)  # Set the active shipping preferences as especified in +preference_hash+
    class Config
      include Singleton
      include PreferenceAccess
    
      class << self
        def instance
          return nil unless ActiveRecord::Base.connection.tables.include?('configurations')
          WeightBucketShippingConfiguration.find_or_create_by_name("Default active_shipping configuration")
        end
      end
    end
  end
end
