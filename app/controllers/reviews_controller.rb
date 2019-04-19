class ReviewsController < ApplicationController

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

  def reviews_params
    params.require(:review).permit(:description, :rating)
  end
end
