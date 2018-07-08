class ReviewsController < ApplicationController
  def create
    @review = Review.new(post_params)
    if @review.save
      redirect_to root_path
    end
  end
  private
  def post_params
    params.require(:review).permit(:author, :comment, :book_id)
  end
end
