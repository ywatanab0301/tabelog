class UsersController < ApplicationController
  before_action :set_user, only:[:show, :edit, :update]

  def show
    @reviews = @user.reviews.includes(:shop).order('visit_day DESC')
    @review_ranks = @user.reviews.includes(:shop).order('rate DESC')
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
    params.require(:user).permit(:nickname, :avatar, :background_image)
  end

  def set_user
    @user = User.find(params[:id])
  end
end
