class CreateNutritions < ActiveRecord::Migration[6.0]
  def change
    create_table :nutritions do |t|
      t.bigint :food_id
      t.string :serving_size
      t.string :calories
      t.string :total_fat
      t.string :trans_fat
      t.string :saturated_fat
      t.string :cholesterol
      t.string :sodium
      t.string :potassium
      t.string :total_carbohydrate
      t.string :dietary_fiber
      t.string :sugars
      t.string :protein
      t.string :vitamin_a
      t.string :vitamin_c
      t.string :calcium
      t.string :iron

      t.timestamps
    end
  end
end
