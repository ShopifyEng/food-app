module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    field :all_food, [Types::FoodType], null: false, description: "Get all the food items."
    def all_food
      Food.all
    end

    field :food, Types::FoodType, null: false do
      description "Get a food item based on id"
      argument :id, ID, required: true
    end
    def food(id:)
      Food.find(id)
    end

    field :find_food, [Types::FoodType], null: true do
      description "Get all the food from the requested place of origin."
      argument :place_of_origin, String, required: true
    end
    def find_food(place_of_origin:)
      Food.where(place_of_origin: place_of_origin)
    end

    field :all_nutrition, [Types::NutritionType], null: false, description: "Get all the nutrition items."
    def all_nutrition
      Nutrition.all
    end
  end
end
