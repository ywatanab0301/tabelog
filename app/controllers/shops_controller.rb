class ShopsController < ApplicationController
  before_action :set_index, only: [:index]
  before_action :set_resources, only: [:show_menu, :show_reviews, :sort_popular, :sort_visit, :sort_dinner, :sort_lunch, :show]

  def index
    if params[:search].present?
      @shops = Shop.shopsearch(@prefecture_id, @genre_id)
      @shops = @shops.sort.reverse
      @shops = Kaminari.paginate_array(@shops).page(params[:page]).per(10)
      @search_result = params[:search]
      @reviews = Review.count
    else
      @shops = Shop.shopsearch(@prefecture_id, @genre_id)
      @shops = @shops.sort.reverse
      @shops = Kaminari.paginate_array(@shops).page(params[:page]).per(10)
      @search_result = params[:search]
      @reviews = Review.count
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
    @reviews = @shop.reviews.includes(:user).order('created_at DESC')
  end

  def destroy
    @shop = Shop.find(params[:id])
    @shop.destroy
    redirect_to action: 'index'
  end

  def show_menu
  end

  def show_reviews
    if params[:search].present?
      @reviews = @shop.reviews.where('text LIKE(?)', "%#{params[:search]}%")
    else
      @reviews = @shop.reviews.includes(:user).order('created_at DESC')
    end
  end

  def sort_popular
    @reviews = @shop.reviews.includes(:budgets, :user).order('likes_count DESC')
  end

  def sort_visit
    @reviews = @shop.reviews.includes(:budgets, :user).order('visit_day DESC')
  end

  def top_page
    @shops = Shop.where('shop_name LIKE(?)', "%#{params[:keyword]}%")
    @reviews = Review.count
    respond_to do |format|
      format.html
      format.json
    end
  end

  def sort_dinner
    @reviews = @shop.reviews.includes(:user).order('visit_day DESC').where(lunch_dinner: "1")
  end

  def sort_lunch
    @reviews = @shop.reviews.includes(:user).order('visit_day DESC').where(lunch_dinner: "2")
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

  def set_resources
    @shop = Shop.find(params[:id])
    @prefecture = @shop.prefectures
    @genre = @shop.genres
    @budget = @shop.budgets
  end

  def set_index
    @prefecture_id = params[:prefecture_id]
    @genre_id = params[:genre_id]
  end

end
