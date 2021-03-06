class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!, :configure_permitted_paramaters, if: :devise_controller?

  def configure_permitted_paramaters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :birthdate])

    devise_parameter_sanitizer.permit(:account_update, keys: [:username])
  end

end
