class ReviewsController < ApplicationController
  def create
    @review = Review.new
    @product = Product.find(params[:product_id])
    @review.comment = params[:review][:comment]
    @review.product_id = params[:product_id]

    if @review.save
      flash[:notice] = "Your review was saved."
      redirect_to product_url(@product)
    else
      flash[:notice] = "There was an error with your review"
      render 'products/show'
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
