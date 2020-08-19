class UsersController < ApplicationController
  def show_user
    @user = User.find(params[:id])
  end

  def show_seller?
    @user.is_a_seller
    @user_seller = User.find(params[:id])
  end
end
