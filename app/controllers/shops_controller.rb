class ShopsController < ApplicationController

  def index
    @shops = Shop.all
  end

  def new
    @shop = Shop.new
  end

  def create
    Shop.create(shop_params)
  end

  def show
  end

  private

  def shop_params
    params.require(:shop).permit(:shop_name, :shop_name_f, :phone_number, :city_address, :building, :hours, :closed_day, :prefecture_ids, :genre_ids)
  end

end
