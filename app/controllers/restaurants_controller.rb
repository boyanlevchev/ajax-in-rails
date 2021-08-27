class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])
    @review = Review.new
  end

  def destroy
    @restaruant = Restaurant.find(params[:id])
    @restaruant.destroy
    redirect_to restaurants_path
  end
end
