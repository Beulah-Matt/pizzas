class RestaurantPizzaSerializer < ActiveModel::Serializer
  attributes :id 
  belongs_to :pizza
  belongs_to :restaurant
end
