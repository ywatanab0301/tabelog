class ShopsController < ApplicationController
  before_action :set_shop, only: [:show_menu, :show_reviews, :sort_popular, :sort_visit]

  before_action :set_shop, only: [:show_menu, :show_reviews, :sort_popular, :sort_visit]

  def index
    # @shops = Shop.order("created_at DESC").page(params[:page]).per(10)
    if params[:search].present?
      @shops = Shop.search(params[:search]).order("created_at DESC").page(params[:page]).per(10)
    else
      @shops = Shop.order("created_at DESC").page(params[:page]).per(10)
    end
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
    @budget = @shop.budgets
    @reviews = @shop.reviews.includes(:budgets, :user).order('created_at DESC')
  end

  def show_menu
  end

  def show_reviews
    @reviews = @shop.reviews.includes(:budgets, :user).order('created_at DESC')
  end

  def sort_popular
    @reviews = @shop.reviews.includes(:budgets, :user).order('likes_count DESC')
  end

  def sort_visit
    @reviews = @shop.reviews.includes(:budgets, :user).order('visit_day DESC')
  end

  def top_page
    @user = User.find(current_user.id)
    @review = @user.reviews
  end

  def search_result
  end

  def destroy
    @shop = Shop.find(params[:id])
    @shop.destroy
    redirect_to action: 'index'
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
      :budget_ids,
      :pic1,
      :pic2,
      :pic3,
      :pic4,
      :pic5,
      :menu_name_1,
      :menu_name_2,
      :menu_name_3,
      :menu_name_4,
      :menu_name_5,
      :menu_image_1,
      :menu_image_2,
      :menu_image_3,
      :menu_image_4,
      :menu_image_5,
      :menu_price_1,
      :menu_price_2,
      :menu_price_3,
      :menu_price_4,
      :menu_price_5,
      :menu_detail_1,
      :menu_detail_2,
      :menu_detail_3,
      :menu_detail_4,
      :menu_detail_5,
      :sub_prtext,
      :station)
  end

  def set_shop
    @shop = Shop.find(params[:shop_id])
    @prefecture = @shop.prefectures
    @genre = @shop.genres
<<<<<<< HEAD
    @budget = @shop.budgets
  end
=======
  end

>>>>>>> master
end
