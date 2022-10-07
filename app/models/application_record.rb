class ApplicationRecord < ActiveRecord::Base
  def after_sign_in_path_for(resource)
    resource.next_step
  end
  
  primary_abstract_class
end
