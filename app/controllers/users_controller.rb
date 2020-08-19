class UsersController < ApplicationController
  # before_action :authenticate_user!

  def show
    @user = User.first
    render "show_seller"

    # if current_user.is_a_seller?
    #   render "show_seller"
    # else
    #   render "show_user"
    # end

  def edit
    @user = current_user
  end

  def update
    @user = User.find(params[:id])
    @user.update(users_params)
    redirect_to user_path(@user)
  end


  private

  def users_params
    params.require(:user).permit(:first_name, :last_name, :email, :phone_number)

  end
end

      # @user = User.find
      # @user = User.find(params[:id])
