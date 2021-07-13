module Types
  class MutationType < Types::BaseObject
    field :food_create, mutation: Mutations::FoodCreate
    field :food_delete, mutation: Mutations::FoodDelete
    field :food_update, mutation: Mutations::FoodUpdate

    field :nutrition_create, mutation: Mutations::NutritionCreate
    field :nutrition_delete, mutation: Mutations::NutritionDelete
    field :nutrition_update, mutation: Mutations::NutritionUpdate
  end
end
