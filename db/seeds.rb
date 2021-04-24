# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
require 'faker'
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
5.times do
  Restaurant.create(
    name: Faker::Restaurant.name ,
    address: Faker::Address.street_address,
    phone_number: Faker::Number.number(digits: 11),
    category: ["chinese", "italian", "japanese", "french", "belgian"].sample
    )
end

