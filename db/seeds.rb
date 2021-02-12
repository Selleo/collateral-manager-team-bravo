# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# require 'faker'

# 10.times do
#   Collateral.create!({
#     name: Faker::IndustrySegments.industry,
#     kind: Faker::IndustrySegments.super_sector,
#     url: Faker::IndustrySegments.sector
#   })
#   Tag.create!({
#     name: Faker::Games::Pokemon.name,
#     kind: Faker::Games::Pokemon.move
#   })


# end
Collateral.create!({
  name: "Collateral 1",
  kind: "blog post",
  url: "https://apidock.com/rails/ActiveRecord/Base/find/class"
})
Collateral.create!({
  name: "Collateral 2",
  kind: "blog post",
  url: "https://apidock.com/rails/ActiveRecord/Base/find/class"
})
Collateral.create!({
  name: "Collateral 3",
  kind: "portfolio",
  url: "https://apidock.com/rails/ActiveRecord/Base/find/class"
})
Collateral.create!({
  name: "Collateral 4",
  kind: "portfolio",
  url: "https://apidock.com/rails/ActiveRecord/Base/find/class"
})

Tag.create!({
  name: "aws",
  kind: "domain"
})
Tag.create!({
  name: "ruby",
  kind: "domain"
})
Tag.create!({
  name: "usa",
  kind: "stock"
})
Tag.create!({
  name: "germany",
  kind: "stock"
})

Collateral.find(1).tags << Tag.find(1)
Collateral.find(1).tags << Tag.find(2)
Collateral.find(1).tags << Tag.find(3)
Collateral.find(1).tags << Tag.find(4)
Collateral.find(2).tags << Tag.find(1)
Collateral.find(2).tags << Tag.find(4)
Collateral.find(3).tags << Tag.find(2)
Collateral.find(3).tags << Tag.find(3)
Collateral.find(3).tags << Tag.find(1)
Collateral.find(4).tags << Tag.find(4)