class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  def after_sign_in_path_for(resource)
    if current_admin
      admins_products_path
    else
      root_path
    end
  end

  def after_sign_out_path_for(resource)
    case params[:logout]
    when "0"
      root_path
    when "1"
      new_admin_session_path
    end
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:family_name, :first_name, :family_name_kana, :first_name_kana, :phone_number, :postal_code, :address ])
  end
end
