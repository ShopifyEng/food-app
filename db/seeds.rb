# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

spaghetti = Food.create!(
  name: 'Spaghetti',
  place_of_origin: 'Italy',
  image: 'https://www.not-a-link.com/spaghetti.png',
)

beef_chow_mein = Food.create!(
  name: 'Beef Chow Mein',
  place_of_origin: 'China',
  image: 'https://www.not-a-link.com/beef-chow-mein.png',
)

tortilla_de_patatas = Food.create!(
  name: 'Tortilla de patatas',
  place_of_origin: 'Spain',
  image: 'https://www.not-a-link.com/tortilla-de-patatas.png',
)

Nutrition.create!(
  food_id: spaghetti.id,
  serving_size: '100 g',
  calories: '158',
  total_fat: '0.98 g',
  trans_fat: '0 g',
  saturated_fat: '0.2 g',
  cholesterol: '0 mg',
  sodium: '1 mg',
  potassium: '44 mg',
  total_carbohydrate: '31 g',
  dietary_fiber: '1.8 g',
  sugars: '0.6 g',
  protein: '6 g',
  vitamin_a: '0%',
  vitamin_c: '0%',
  calcium: '0%',
  iron: '7%',
)

Nutrition.create!(
  food_id: beef_chow_mein.id,
  serving_size: '100 g',
  calories: '459',
  total_fat: '18 g',
  trans_fat: '0 g',
  saturated_fat: '1.8 g',
  cholesterol: '0 mg',
  sodium: '847 mg',
  potassium: '120 mg',
  total_carbohydrate: '67 g',
  dietary_fiber: '2.7 g',
  sugars: '0.9 g',
  protein: '11 g',
  vitamin_a: '0%',
  vitamin_c: '0%',
  calcium: '2%',
  iron: '26%',
)

Nutrition.create!(
  food_id: tortilla_de_patatas.id,
  serving_size: '100 g',
  calories: '149',
  total_fat: '9.6 g',
  trans_fat: '0 g',
  saturated_fat: '2.5 g',
  cholesterol: '0 mg',
  sodium: '1400 mg',
  potassium: '0 mg',
  total_carbohydrate: '9.4 g',
  dietary_fiber: '0 g',
  sugars: '0 g',
  protein: '5.5 g',
  vitamin_a: '0%',
  vitamin_c: '0%',
  calcium: '0%',
  iron: '0%',
)

puts 'Seeding successful.'
