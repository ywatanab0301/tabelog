class UsersController < ApplicationController
  before_action :set_user

  def index
  end

  def show
    @reviews = @user.reviews.includes(:shop, :budgets).order('visit_day DESC')
    @review_ranks = @user.reviews.order('rate DESC')
  end

  def show_all
    @reviews = @user.reviews.includes(:shop).order('updated_at DESC')
  end

  def show_gone
    @reviews = @user.reviews.includes(:shop).order('updated_at DESC')
    # hash = @reviews.group(:shop_name).having('count(*) >= 2')
    # binding.pry
  end

  def show_wannago
    @user = current_user
    @wants = Want.where(user_id: @user.id).all
  end

  def edit
  end

  def update
    if @user.update(user_params)
      redirect_to action: 'show'
    else
      redirect_to action: 'edit'
    end
  end

  private

  def user_params
    params.require(:user).permit(:nickname, :avatar, :background_image, :wants_count)
  end

  def set_user
    @user = User.find(params[:id])
  end

end
