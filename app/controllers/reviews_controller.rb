# frozen_string_literal: true

class ReviewsController < ApplicationController
  def create
    @review = Review.new(post_params)
    redirect_to root_path if @review.save
  end

  private

  def post_params
    params.require(:review).permit(:author, :comment, :book_id)
  end
end
