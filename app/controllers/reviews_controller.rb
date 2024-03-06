class ReviewsController < ApplicationController
  def create
    @review = Review.new review_params
    @restaurant = Restaurant.findparams[:restaurant_id]
    @review.restaurant = @restaurant
    if @review.save
      redirect_to @restaurant, notice: "Restaurant was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end
  private
  # Only allow a list of trusted parameters through.
  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
