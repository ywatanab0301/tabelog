class ShopsController < ApplicationController
  before_action :set_shop, only: [:show_menu, :show_reviews, :sort_popular, :sort_visit]

  def index
    @prefecture_id = params[:prefecture_id]
    @genre_id = params[:genre_id]
    @shops = Shop.search(@prefecture_id, @genre_id)
    @shops = @shops.sort.reverse
    @shops = Kaminari.paginate_array(@shops).page(params[:page]).per(10)
  end

  def new
    @shop = Shop.new
  end

  def create
    @shop = Shop.create(shop_params)
    redirect_to action: 'index'
  end

  def show
    @shop = Shop.find(params[:id])
    @prefecture = @shop.prefectures
    @genre = @shop.genres
    @reviews = @shop.reviews.includes(:user).order('created_at DESC')
  end

  def show_menu
  end

  def show_reviews
    @reviews = @shop.reviews.includes(:user).order('created_at DESC')
  end

  def sort_popular
    @reviews = @shop.reviews.includes(:user).order('likes_count DESC')
  end

  def sort_visit
    @reviews = @shop.reviews.includes(:user).order('visit_day DESC')
  end

  private

  def shop_params
    params.require(:shop).permit(
      :shop_name,
      :shop_name_f,
      :phone_number,
      :city_address,
      :building,
      :hours,
      :closed_day,
      :prtext,
      :prefecture_ids,
      :genre_ids,
      :pic1,
      :pic2,
      :pic3,
      :pic4,
      :pic5)
  end

  def set_shop
    @shop = Shop.find(params[:shop_id])
    @prefecture = @shop.prefectures
    @genre = @shop.genres
  end

end
