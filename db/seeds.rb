# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Visitor.delete_all
Booking.delete_all
Experience.delete_all
Seller.delete_all


5.times do
  v = Visitor.new(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    )
  v.save!
end

s_one = Seller.new(
          first_name: Faker::Name.first_name,
          last_name: Faker::Name.last_name,
          email: Faker::Internet.email,
          )
s_one.save!


s_two = Seller.new(
          first_name: Faker::Name.first_name,
          last_name: Faker::Name.last_name,
          email: Faker::Internet.email,
          )
s_two.save!

s_three = Seller.new(
          first_name: Faker::Name.first_name,
          last_name: Faker::Name.last_name,
          email: Faker::Internet.email,
          )
s_three.save!

s_four = Seller.new(
          first_name: Faker::Name.first_name,
          last_name: Faker::Name.last_name,
          email: Faker::Internet.email,
          )
s_four.save!

s_five = Seller.new(
          first_name: Faker::Name.first_name,
          last_name: Faker::Name.last_name,
          email: Faker::Internet.email,
          )
s_five.save!


sellers_id = [s_one.id, s_two.id, s_three.id, s_four.id, s_five.id]


10.times do
  e = Experience.new(
        title: Faker::Game.title,
        description: Faker::Lorem.paragraph(sentence_count: 4),
        price_per_person: rand(50..350),
        nb_max_of_person: rand(1..10),
        seller_id: sellers_id.sample
      )
  e.save!
end
















