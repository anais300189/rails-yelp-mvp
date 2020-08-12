class RestaurantsController < ApplicationController
    def new
      @restaurant = Restaurant.new
    end

    def create
      @restaurant = Restaurant.new(restaurant_params)
      @restaurant.save
      redirect_to restaurant_path(@restaurant)
    end

    def show
      @restaurant = Restaurant.find(params[:id])
      @review = Review.new
    end

    def index
      @restaurants = Restaurant.all
    end

    private

    def restaurant_params
      params.require(:restaurant).permit(:name, :address, :category, :phone_number)
    end

    def find_restaurant
      @restaurant = Restaurant.find(params[:id])
    end
end
