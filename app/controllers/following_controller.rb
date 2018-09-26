class FollowingController < ApplicationController

  def show
    @user = User.find(params[:id])
    @users = @user.followings
    @reviews = @user.reviews
    # render 'show_follow'
  end

end
