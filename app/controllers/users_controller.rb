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
  end
end

      # @user = User.find
      # @user = User.find(params[:id])
