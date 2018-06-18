class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:f_name, :l_name, :access, :birthday])
    devise_parameter_sanitizer.permit(:account_update, keys: [:f_name, :l_name, :access, :birthday])
  end
end
