# frozen_string_literal: true

class Stores::Stores::SessionsController < Devise::SessionsController
  # before_action :configure_sign_in_params, only: [:create]

  # GET /resource/sign_in
  def new
    super
  end

  def after_sign_in_path_for(resource)
    stores_store_path(current_store) # ログイン後に遷移するpathを設定
  end

  # POST /resource/sign_in
  def create
    super
  end

  # DELETE /resource/sign_out
  def destroy
    super
  end

  protected

  # If you have extra params to permit, append them to the sanitizer.
  def configure_sign_in_params
    devise_parameter_sanitizer.permit(:sign_in, keys: [:store_mane, :store_numbae])
  end
end
