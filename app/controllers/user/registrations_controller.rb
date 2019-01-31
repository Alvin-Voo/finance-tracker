class User::RegistrationsController < Devise::RegistrationsController
  before_action :configure_permitted_parameters, only: [:sign_up_params, :account_update_params, :create, :update]

  protected
    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up,keys:[:first_name,:last_name])
      devise_parameter_sanitizer.permit(:account_update,keys:[:first_name,:last_name])
    end
end