class WantsController < ApplicationController

  before_action :set_wants, only: [:want, :notwant]

  def create
    @user_id = current_user.id
    @shop_id = Shop.find(params[:id]).id
    @want = Want.new(shop_id: @shop_id, user_id: @user_id)
  end

  def index
    @user = current_user
    @wants = Want.where(user_id: @user.id).all
  end

  def want
    want = current_user.wants.create(shop_id: @shop.id)
  end

  def notwant
    notwant = current_user.wants.find_by(shop_id: @shop.id).destroy
  end

  private

  def set_wants
    @shop = Shop.find(params[:shop_id])
    @id_name = "#want-link-#{@shop.id}"
    @id_thumbtack = "#thumbtack-#{@shop.id}"
  end

end
