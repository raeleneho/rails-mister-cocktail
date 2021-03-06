class ReviewsController < ApplicationController
  def create
    @cocktail = Cocktail.find(params[:cocktail_id])
    @review = Review.new(review_params)
    @review.cocktail = @cocktail
    if @review.save
      redirect_to cocktail_path(@cocktail), notice: 'review was successfully created.'
    else
      @dose = Dose.new
      render "cocktails/show"
    end
  end

  private

  def review_params
    params.require(:review).permit(:rating, :content)
  end
end
