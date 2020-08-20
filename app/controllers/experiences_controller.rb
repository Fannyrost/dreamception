class ExperiencesController < ApplicationController

  skip_before_action :authenticate_user!, only: [:show, :index]

  def index
    @experiences = Experience.all
  end

  def show
    @experience = Experience.find(params[:id])
  end

  def edit
    @experience = Experience.find(params[:id])
  end

  def update
    @experience = Experience.find(params[:id])
    @experience.update(experience_params)

    redirect_to user_path(current_user)
  end

  def new
    @experience = Experience.new
  end

  def create
    @experience = Experience.new(experience_params)
    @experience.user_id = current_user.id
    if @experience.save
      redirect_to user_path(current_user)
    else
      render :new
    end
  end

  private

  def experience_params
    params.require(:experience).permit(:title, :photo, :short_description, :long_description, :category, :price_per_person, :nb_max_of_persons)
  end
end
