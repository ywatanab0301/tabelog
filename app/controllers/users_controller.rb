class UsersController < ApplicationController

  def show
<<<<<<< HEAD
=======
    @user = User.find(params[:id])
  end

  private
  def user_params
    params.require(:user).permit(:nickname, :avatar, :background_image)
>>>>>>> master
  end
end
