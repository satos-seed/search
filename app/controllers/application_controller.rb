class ApplicationController < ActionController::Base

	before_action :configure_permitted_parameters, if: :devise_controller?

	def after_sign_out_path_for(resource)
	    root_path # ログアウト後に遷移するpathを設定
    end

	protected
	def configure_permitted_parameters
		devise_parameter_sanitizer.permit(:sign_up, keys: [:store_name, :store_number, :phone_number, :address, :business_hours, :regular_holiday])
		devise_parameter_sanitizer.permit(:account_update, keys: [:store_name, :store_number, :phone_number, :address, :business_hours, :regular_holiday, :information, :email])
		devise_parameter_sanitizer.permit(:account_create, keys: [:store_name, :store_number, :phone_number, :address, :business_hours, :regular_holiday, :information, :email])
		devise_parameter_sanitizer.permit(:sign_in, keys: [:store_number])
    end
end
