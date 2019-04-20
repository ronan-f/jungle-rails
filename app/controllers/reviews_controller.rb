class ReviewsController < ApplicationController

  # before_filter test_if_user

  def create
    @product = Product.find(params[:product_id])
    @review = @product.reviews.new(reviews_params)
    @review.user_id = current_user.id

    if @review.save
      redirect_to @product
    else
      redirect_to @product
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @product = Product.find(params[:product_id])
    if @review
      @review.destroy
      redirect_to @product
    else
      redirect_to @product
    end
  end

  def reviews_params
    params.require(:review).permit(:description, :rating)
  end
end
