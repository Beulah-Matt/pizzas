class RestaurantsController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
    def index
        render json: Restaurant.all
    end

    def show
        restaurant = find_restaurant
        render json: restaurant, serializer: SingleRestaurantSerializer 
    end

    def destroy
        restaurant = find_restaurant
        restaurant.destroy
        render json: restaurant, status: :no_content
    end

    private 
    def find_restaurant
        restaurant = Restaurant.find(params[:id])
    end

    def render_not_found_response
        render json: { error: "Restaurant not found" }, status: :not_found
    end
end
