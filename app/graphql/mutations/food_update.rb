module Mutations
  class FoodUpdate < BaseMutation
    argument :id, ID, required: true
    argument :name, String, required: false
    argument :place_of_origin, String, required: false
    argument :image, String, required: false

    type Types::FoodType

    def resolve(**args)
      food = Food.find(args[:id])
      food.update!(args)

      return food
    end
  end
end
