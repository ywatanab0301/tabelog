class LikesController < ApplicationController
  before_action :set_variables

  def like
    like = current_user.likes.create(review_id: @review.id)
  end

  def unlike
    like = current_user.likes.find_by(review_id: @review.id).destroy
  end

  private

  def set_variables
    @review = Review.find(params[:review_id])
    @id_name = "#like-link-#{@review.id}"
    @id_heart = "#heart-#{@review.id}"
  end

  # def create
  #   @like = Like.create(user_id: current_user.id, review_id: params[:review_id])
  #   @likes = Like.where(review_id: params[:review_id])
  #   @reviews = review.all
  # end

  # def destroy
  #   like = Like.find_by(user_id: current_user.id, review_id: params[:review_id])
  #   like.destroy
  #   @likes = Like.where(review_id: params[:review_id])
  #   @reviews = review.all
  # end
end
