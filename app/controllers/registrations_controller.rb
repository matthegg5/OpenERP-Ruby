class RegistrationsController < Devise::RegistrationsController
  skip_before_action :require_no_authentication, only: [ :new, :create ]  # Allow accounts to be created by authenticated users

  def create
    @user = User.new(sign_up_params)
    if @user.save
      redirect_to users_path, notice: "User #{@user.username} was successfully created."
    else
      redirect_to users_path, alert: "User #{@user.username} creation failed"
    end
  end

  def destroy
    @user = User.find_by(id: params[:id])
    if @user
      # Ensure admin session is intact (sign out user before deleting, but don't sign out the admin)
      sign_out(current_user) if current_user && current_user != @user

      @user.destroy
      redirect_to users_path, notice: "User was successfully deleted."
    else
      redirect_to users_path, alert: "User not found."
    end
  end

  private

  def sign_up_params
    params.require(:user).permit(:username, :firstname, :lastname,  :email, :password, :password_confirmation)
  end

  def account_update_params
    params.require(:user).permit(:username, :firstname, :lastname,  :email, :password, :password_confirmation)
  end
end
