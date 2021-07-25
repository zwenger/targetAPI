class ApplicationController < ActionController::Base
        include DeviseTokenAuth::Concerns::SetUserByToken
        before_action :configure_permitted_parameters, if: :devise_controller?
	respond_to :json
        skip_before_action :verify_authenticity_token, :only => :create, if: :devise_controller?
	protected
	
	def configure_permitted_parameters
		devise_parameter_sanitizer.permit(:sign_up, keys: [:username, :first_name, :last_name])
	end
end
