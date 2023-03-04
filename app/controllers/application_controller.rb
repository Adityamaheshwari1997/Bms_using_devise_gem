class ApplicationController < ActionController::Base
	def after_sign_in_path_for(resource)
  		theaters_index_path(current_user) # your path
	end


	protect_from_forgery with: :exception

    before_action :configure_permitted_parameters, if: :devise_controller?

     protected

          def configure_permitted_parameters
               devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:FirstName, :LastName, :Username, :email, :password)}

            #    devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:FirstName, :LastName, :Username , :email, :password, :current_password)}
		  end     
end
