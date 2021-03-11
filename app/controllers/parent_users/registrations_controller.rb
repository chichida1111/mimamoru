class ParentUsers::RegistrationsController < Devise::RegistrationsController
  before_action :configure_sign_up_params, only: [:create]
  

  def configure_sign_up_params
    devise_parameter_sanitizer.permit(:sign_up, keys: [ :phone_number, :last_name_c_j, :first_name_c_j, :last_name_c_k, :first_name_c_k, :birthday, :class_c_id ])
  end
end


