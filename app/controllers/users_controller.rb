class UsersController < ApplicationController
  before_action :authenticate_user!

  def show
    @user = User.find_by_id(current_user.id)
  end

  def user_params
    params.require(:user).permit(:first_name, :last_name, :state, :country, :bio, :status_id, :role_id, :email)
  end
end
