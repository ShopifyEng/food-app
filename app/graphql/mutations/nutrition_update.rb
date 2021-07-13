module Mutations
  class NutritionUpdate < BaseMutation
    argument :id, ID, required: true
    argument :food_id, ID, required: false
    argument :serving_size, String, required: false
    argument :calories, String, required: false
    argument :total_fat, String, required: false
    argument :trans_fat, String, required: false
    argument :saturated_fat, String, required: false
    argument :cholesterol, String, required: false
    argument :sodium, String, required: false
    argument :potassium, String, required: false
    argument :total_carbohydrate, String, required: false
    argument :dietary_fiber, String, required: false
    argument :sugars, String, required: false
    argument :protein, String, required: false
    argument :vitamin_a, String, required: false
    argument :vitamin_c, String, required: false
    argument :calcium, String, required: false
    argument :iron, String, required: false

    type Types::NutritionType

    def resolve(**args)
      nutrition = Nutrition.find(args[:id])
      nutrition.update!(args)

      return nutrition
    end
  end
end
