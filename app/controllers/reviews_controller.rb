class ReviewsController < ApplicationController

  def index
    @reviews = Review.includes(:user)
  end

  def new
    @shop = Shop.find params[:shop_id]
    @review = Review.new
    @review.review_budgets.build
  end

  def create
    review = Review.new(review_params)
    review.save
    redirect_to :action => "new"
  end

  def show
    @review = Review.find(params[:id])
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
        :pic1,
        :pic2,
        :pic3,
        :pic4,
        :pic5,
        # review_budgets_attributes: [budget_ids]
        :budget_ids,
        :shop_id
        ).merge(shop_id: params[:shop_id], user_id: current_user.id)
    end


end
