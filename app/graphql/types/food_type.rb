module Types
  class FoodType < Types::BaseObject
    field :id, ID, null: false
    field :name, String, null: true
    field :place_of_origin, String, null: true
    field :image, String, null: true
    field :nutrition, Types::NutritionType, null: true
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
