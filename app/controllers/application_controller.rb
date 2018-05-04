class ApplicationController < ActionController::Base
before_action :authenticate_user!

  def after_sign_in_path_for(resource)
    if current_user.profile.first_name.nil?
      edit_profile_path(current_user)
    else
      root_path
    end
  end
  
end
