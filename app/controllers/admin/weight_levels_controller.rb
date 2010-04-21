class Admin::WeightLevelsController < Admin::BaseController
  resource_controller

  update.response do |wants|
    wants.html { redirect_to collection_url }
  end

  create.response do |wants|
    wants.html { redirect_to collection_url }
  end
end
