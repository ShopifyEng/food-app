module Mutations
  class NutritionDelete < BaseMutation
    argument :id, ID, required: true

    type Types::NutritionType

    def resolve(id:)
      nutrition = Nutrition.find(id)
      nutrition.destroy!

      nutrition
    end
  end
end
