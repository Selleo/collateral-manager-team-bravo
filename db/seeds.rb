# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

10.times do
  Collateral.create!({
    name: Faker::IndustrySegments.industry,
    kind: Faker::IndustrySegments.super_sector,
    url: Faker::IndustrySegments.sector
  })
  Tag.create!({
    name: Faker::Games::Pokemon.name,
    kind: Faker::Games::Pokemon.move
  })
end
