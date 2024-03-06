class ReviewController < ApplicationController
  def create
    @review = Review.new review_params
    @review.restaurant = @restaurant = params[:restaurant_id]
    if @review.save
      redirect_to @restaurant, notice: "Restaurant was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end
end
