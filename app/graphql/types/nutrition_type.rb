module Types
  class NutritionType < Types::BaseObject
    field :id, ID, null: false
    field :food_id, Integer, null: true
    field :serving_size, String, null: true
    field :calories, String, null: true
    field :total_fat, String, null: true
    field :trans_fat, String, null: true
    field :saturated_fat, String, null: true
    field :cholesterol, String, null: true
    field :sodium, String, null: true
    field :potassium, String, null: true
    field :total_carbohydrate, String, null: true
    field :dietary_fiber, String, null: true
    field :sugars, String, null: true
    field :protein, String, null: true
    field :vitamin_a, String, null: true
    field :vitamin_c, String, null: true
    field :calcium, String, null: true
    field :iron, String, null: true
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
