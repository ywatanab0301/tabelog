class FollowersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @users = @user.followers
    @reviews = @user.reviews
  end

end
