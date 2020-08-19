class ReviewsController < ApplicationController
  skip_before_action :authenticate_user!, except: [:index, :show]
end
