class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :basic_auth, :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:nickname, :avatar, :background_image])
  end

  def basic_auth
    authenticate_or_request_with_http_basic do |username, password|
      username == 'admin' && password == 'tabelog34'
    end
  end
end
