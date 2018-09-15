class ReviewsController < ApplicationController

  def new
    @review = Review.new
    @image =  Image.new
    @review.images.build
  end

  def create
    Review.new(review_params)
  end


  private
    def review_params
      params.require(:review).permit(:lunch_dinner, :rate, :food_rate, :cp_rate, :service_rate, :drink_rate, :atmosphere, :title, :text, :visit_day, images_attributes: [:pic1, :pic2, :pic3, :pic4, :pic5]).merge(user_id: current_user.id)
    end

    # def image_params
    #   params.permit(:pic1, :pic2, :pic3, :pic4, :pic5)
    # end
end
