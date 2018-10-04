class ReviewsController < ApplicationController
    before_action :set_shop, only: [:new, :edit, :show]
    before_action :set_review, only: [:edit, :update, :destroy, :show]

  def index
    @reviews = Review.includes(:user)
  end

  def new
    @review = Review.new
    @review.review_budgets.build
  end

  def create
    review = Review.new(review_params)
    if review.save
      redirect_to controller: 'users', action: 'show_gone',id: current_user.id
    else
      redirect_to action: 'new'
    end
  end

  def edit
  end

  def update
    if @review.update(review_params)
      redirect_to controller: 'users', action: 'show', id: current_user.id
    else
      redirect_to action: 'edit'
    end
  end

  def destroy
    @review.destroy if @review.user.id = current_user.id
    redirect_to controller: 'users', action: 'show', id: current_user.id
  end

  def show
    @prefecture = @shop.prefectures
    @genre = @shop.genres
    @budget = @shop.budgets
    gon.shop = @shop
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

    def set_review
      @review = Review.find(params[:id])
    end

    def set_shop
      @shop = Shop.find(params[:shop_id])
    end
end
