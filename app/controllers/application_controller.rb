class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :account_update_permitted_parameters, :sign_in_permitted_parameters, if: :devise_controller?

  protected
    def account_update_permitted_parameters
      devise_parameter_sanitizer.permit(:account_update) do |user_params|
        user_params.permit(:firstname, :lastname, :current_password, :email, :password, :password_confirmation, :avatar)
      end
    end

  protected
    def sign_in_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up) do |user_params|
        user_params.permit(:firstname, :lastname, :email, :password, :password_confirmation)
      end
    end
end
