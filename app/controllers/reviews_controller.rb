class ReviewsController < ApplicationController
  def new
    @flat = Flat.find(params[:flat_id])
    @review = Review.new
  end
  def create
    @flat = Flat.find(params[:flat_id])
    @review = Review.new(review_params)
    @review.flat = @flat
    @review.save
    redirect_to @flat
  end
  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    redirect_to @review.flat
  end

  private

  def review_params
    params.require(:review).permit(:content)
  end
end
