class ReviewsController < ApplicationController

  def new
    @review = Review.new
    @review.review_budgets.build
  end

  def create
    # binding.pry
    review = Review.new(review_params)
    review.save
    redirect_to :action => "new"
  end

  private
  def review_params
    params.require(:review).permit(
      :lunch_dinner,
      :rate,
      :food_rate,
      :cp_rate,
      :service_rate,
      :drink_rate,
      :atmosphere,
      :title,
      :text,
      :visit_day,
      :user_id,
      :pic1,
      :pic2,
      :pic3,
      :pic4,
      :pic5,
      # review_budgets_attributes: [budget_ids]
      :budget_ids
      ).merge(user_id: current_user.id)
  end

end
