class WeightBucketShippingHooks < Spree::ThemeSupport::HookListener
  insert_after :admin_configurations_menu, 'admin/configurations/weight_bucket_configuration'
end
