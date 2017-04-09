# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# Create Posts
20.times do
  action = Action.create!(
    title: Faker::Hipster.sentence,
    description: Faker::Hipster.paragraph,
    img: Faker::Placeholdit.image
  )
  action.update_attribute(:created_at, rand(10.minutes .. 1.year).ago)
end
