class ReviewsController < ApplicationController

  def new
    @review = Review.new
    @review.review_budgets.build
  end

  def create
    # review = Review.new(
    #   lunch_dinner: review_params[:lunch_dinner],
    #   rate: review_params[:rate],
    #   food_rate: review_params[:food_rate],
    #   cp_rate: review_params[:cp_rate],
    #   service_rate: review_params[:service_rate],
    #   drink_rate: review_params[:drink_rate],
    #   atmosphere: review_params[:atmosphere],
    #   title: review_params[:title],
    #   text: review_params[:text],
    #   visit_day: review_params[:visit_day],
    #   user_id: current_user.id,
    #   pic1: review_params[:pic1],
    #   pic2: review_params[:pic2],
    #   pic3: review_params[:pic3],
    #   pic4: review_params[:pic4],
    #   pic5: review_params[:pic5],
    #   budget_ids: review_params[:budget_ids]
    #   )
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
