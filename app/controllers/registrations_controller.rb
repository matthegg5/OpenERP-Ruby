class RegistrationsController < Devise::RegistrationsController
  skip_before_action :require_no_authentication, only: [ :new, :create ]  # Allow accounts to be created by authenticated users
  private

  def sign_up_params
    params.require(:user).permit(:username, :firstname, :lastname,  :email, :password, :password_confirmation)
  end

  def account_update_params
    params.require(:user).permit(:username, :firstname, :lastname,  :email, :password, :password_confirmation)
  end
end
