class CountryFavoritesController < ApplicationController
  def index
    country_favorites = CountryFavorite.all
    render json: country_favorites
  end

  def show
    country_favorite = CountryFavorite.find(params[:id])
    render json: country_favorite
  end

  def create
    country_favorite = CountryFavorite.create(user_id: params[:user_id], country_id: params[:country_id])
    render json: country_favorite
  end

  def destroy
    country_favorite = CountryFavorite.find(params[:id])
    country_favorite.destroy
    render json: {}
  end
end
