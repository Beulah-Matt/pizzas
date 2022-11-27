class RestaurantsController < ApplicationController
    def index
        render json: Restaurant.all
    end

    # private 
    # def find_restaurant
    #     restaurant = Restaurant.find(params[:id])
    # end
end
