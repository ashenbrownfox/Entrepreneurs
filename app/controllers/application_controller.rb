class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  # Devise Documentation
  # if the user is submitting information from the devise controller
  # then run this action
  before_action :configure_permitted_parameters, if: :devise_controller?
  protected
    def configure_permitted_parameters
        # WhiteList these stripe card tokens and fields so information can be collected 
        devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:stripe_card_token, :email, :password, :password_confirmation) }
    end
end
