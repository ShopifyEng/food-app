module Mutations
  class NutritionCreate < BaseMutation
    argument :food_id, ID, required: true
    argument :serving_size, String, required: true
    argument :calories, String, required: true
    argument :total_fat, String, required: true
    argument :trans_fat, String, required: true
    argument :saturated_fat, String, required: true
    argument :cholesterol, String, required: true
    argument :sodium, String, required: true
    argument :potassium, String, required: true
    argument :total_carbohydrate, String, required: true
    argument :dietary_fiber, String, required: true
    argument :sugars, String, required: true
    argument :protein, String, required: true
    argument :vitamin_a, String, required: true
    argument :vitamin_c, String, required: true
    argument :calcium, String, required: true
    argument :iron, String, required: true

    type Types::NutritionType

    def resolve(**args)
      Nutrition.create!(**args)
    end
  end
end
