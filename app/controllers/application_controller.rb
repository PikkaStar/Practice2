class ApplicationController < ActionController::Base
  before_action :configure_parmitted_parameters,if: :devise_controller?

  def after_sign_in_path_for(source)
    user_path(current_user)
  end

  def after_sign_out_path_for(source)
    root_path
  end

  protected

  def configure_parmitted_parameters
    devise_parameter_sanitizer.permit(:sign_up,keys: [:email])
  end


end
