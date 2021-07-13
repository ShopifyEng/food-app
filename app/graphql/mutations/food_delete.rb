module Mutations
  class FoodDelete < BaseMutation
    argument :id, ID, required: true

    type Types::FoodType

    def resolve(id:)
      food = Food.find(id)
      food.destroy!

      return food
    end
  end
end
