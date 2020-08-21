class ReviewsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def new
    @experience = Experience.find(params[:experience_id])
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @experience = Experience.find(params[:experience_id])
    @review.experience = @experience
    @review.user = current_user

    if @review.save
      redirect_to experiences_path, notice: 'Merci pour votre review'
    else
      render :new
    end
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)

  end

end
