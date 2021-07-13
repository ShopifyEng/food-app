module Mutations
  class FoodCreate < BaseMutation
    argument :name, String, required: true
    argument :place_of_origin, String, required: true
    argument :image, String, required: true

    type Types::FoodType

    def resolve(**args)
      Food.create!(args)
    end
  end
end
