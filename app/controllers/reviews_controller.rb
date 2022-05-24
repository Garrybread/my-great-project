class ReviewsController < ApplicationController
  before_action :get_book

  def create
    @review = @book.reviews.create(review_params)
  end

  def destroy
    @review = @book.reviews.find(params[:id])
    @review.destroy
  end

  private

  def get_book
    @book = Book.find(params[:book_id])
  end

  def review_params
    params.require(:review).permit(:body, :book_id)
  end 
end