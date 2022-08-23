class ApplicationController < ActionController::Base
        protect_from_forgery with: :null_session
        before_action :configure_permitted_parameters, if: :devise_controller?
        include DeviseTokenAuth::Concerns::SetUserByToken

        protected

        def configure_permitted_parameters
          devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :user_name, :last_name, :image])
        end
end
