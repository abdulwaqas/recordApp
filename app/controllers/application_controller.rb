class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception
    before_action :configure_permitted_parameters, if: :devise_controller?
    include Pundit


          rescue_from Pundit::NotAuthorizedError  do
               flash[:notice] = "You are not authorized to perform this action."
               redirect_to(request.referrer || root_path)
          end

     protected

          def configure_permitted_parameters
               devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:name, :email, :password,:role)}
               devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:name, :email, :password, :current_password,:role)}
          end

  



end
