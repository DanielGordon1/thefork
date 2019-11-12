class ReviewsController < ApplicationController
  before_action :set_restaurant

  def new
    # We are doing this to have acces to these variables in the view
    # Mainly so that simpleform can correctly build the form
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    # I have access to @restaurant because of the before_action
    @review.restaurant = @restaurant
    @review.save
    redirect_to restaurant_path(@restaurant)
  end

  private

  def review_params
    params.require(:review).permit(:content)
  end

  def set_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
  end
end
