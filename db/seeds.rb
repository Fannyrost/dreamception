# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)





Review.delete_all
Booking.delete_all
Experience.delete_all
User.delete_all




s_one = User.new(
          first_name: Faker::Name.first_name,
          last_name: Faker::Name.last_name,
          email: Faker::Internet.email,
          password: Faker::Lorem.characters(number: 10),
          is_a_seller: false
          )
s_one.save!

s_two = User.new(
          first_name: Faker::Name.first_name,
          last_name: Faker::Name.last_name,
          email: Faker::Internet.email,
          password: Faker::Lorem.characters(number: 10),
          is_a_seller: false
          )
s_two.save!

s_three = User.new(
          first_name: Faker::Name.first_name,
          last_name: Faker::Name.last_name,
          email: Faker::Internet.email,
          password: Faker::Lorem.characters(number: 10),
          is_a_seller: false
          )
s_three.save!

s_four = User.new(
          first_name: Faker::Name.first_name,
          last_name: Faker::Name.last_name,
          email: Faker::Internet.email,
          password: Faker::Lorem.characters(number: 10),
          is_a_seller: true
          )
s_four.save!

s_five = User.new(
          first_name: Faker::Name.first_name,
          last_name: Faker::Name.last_name,
          email: Faker::Internet.email,
          password: Faker::Lorem.characters(number: 10),
          is_a_seller: false
          )
s_five.save!

users_id = [s_one.id, s_two.id, s_three.id, s_four.id, s_five.id]

experiences_id = []
10.times do
  e = Experience.new(
        title: Faker::Game.title,
        short_description: Faker::Lorem.paragraph(sentence_count: 1),
        long_description: Faker::Lorem.paragraph(sentence_count: 4),
        price_per_person: rand(50..350),
        nb_max_of_persons: rand(5..10),
        is_online: true,
        user_id: users_id.sample,
        category: ["sciences fiction", "histoire", "sensations", "insolite"].sample
      )
  e.save!
  experiences_id << e.id
end

20.times do
  b = Booking.new(
        date: Faker::Date.in_date_period,
        total_price: rand(50..900),
        nb_of_persons: rand(1..5),
        user_id: users_id.sample,
        experience_id: experiences_id.sample
      )
  b.save!

end

