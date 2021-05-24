class Api::V1::ReviewsController < ApplicationController
  skip_before_action :authorized, only: [:index, :create]

  def index
    reviews = Review.all
    render json: ReviewSerializer.new(reviews)
  end

  def create
    review = Review.new(review_params)

    if review.save
      render json: ReviewSerializer.new(review), status: :accepted
    else
      render json: { errors: review.errors.full_messages }, status: :unprocessible_entity
    end
  end

  private

  def review_params
    params.require(:review).permit(:content, :item_id)
  end
end
