class CountryCommentsController < ApplicationController
  def index
    country_comments = CountryComment.all
    render json: country_comments
  end

  def show
    country_comment = CountryFavorite.find(params[:id])
    render json: country_comment
  end

  def create
    country_comment = CountryComment.create(user_id: params[:user_id], country_id: params[:country_id])
    render json: country_comment
  end

  def update
    country_comment = CountryComment.find(params[:id])
    country_comment.update(text: params[:text])
    render json: country_comment
  end

  def destroy
    country_comment = CountryComment.find(params[:id])
    country_comment.destroy
    render json: {}
  end
end
