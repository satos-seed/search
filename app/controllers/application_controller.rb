class ApplicationController < ActionController::Base

	before_action :configure_permitted_parameters, if: :devise_controller?

	def after_sign_out_path_for(resource)
	    root_path # ログアウト後に遷移するpathを設定
    end

    def authenticate_user
    	if @current_user == nil
    		redirect_to("/login")
    	end
    end

	protected
	def configure_permitted_parameters
		store_parameter_cols = [:store_name, :store_number, :phone_number, :address, :business_hours, :regular_holiday, :information]
		user_parameter_cols = [:name]
		
		parameter_parameters = params[:store] ? store_parameter_cols : user_parameter_cols  #store以外のパラメーターが来るとuser扱いになってしまう
		# devise_parameter_sanitizer.permit(:sign_up, keys: [:store_name, :store_number, :phone_number, :address, :business_hours, :regular_holiday, :information, :name])
		devise_parameter_sanitizer.permit(:sign_up, keys: parameter_parameters)
		devise_parameter_sanitizer.permit(:account_update, keys: [:store_name, :store_number, :phone_number, :address, :business_hours, :regular_holiday, :information])
		devise_parameter_sanitizer.permit(:account_create, keys: parameter_parameters)
		devise_parameter_sanitizer.permit(:sign_in, keys: [:store_number])
    end
end
