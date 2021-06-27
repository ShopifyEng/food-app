module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    field :all_food, [Types::FoodType], null: false, description: 'Get all the food items.'

    field :food, Types::FoodType, null: false do
      description 'Get a food item based on id.'
      argument :id, ID, required: true
    end

    field :find_food, [Types::FoodType], null: false do
      description 'Get all food items based on place of origin.'
      argument :term, String, required: true
    end

    field :nutrition, [Types::NutritionType], null: false, description: 'Get all the nutrition facts.'

    def all_food
      Food.all
    end

    def food(id:)
      Food.find(id)
    end

    def find_food(term:)
      Food.where('place_of_origin = ?', term)
    end

    def nutrition
      Nutrition.all
    end
  end
end
