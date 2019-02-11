# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

Event.destroy_all
Attendance.destroy_all


10.times do
	user = User.create!(first_name: Faker::Lebowski.character,last_name: Faker::LordOfTheRings.character,description: Faker::Lorem.sentence,email: Faker::Internet.email, encrypted_password: Faker::Internet.password)
end

20.times do
	event = Event.create!(start_date: (Time.now+6000).to_date, duration: 25, title: "C'est notre titre", description: "Voila c'est notre description, on va faire ça et ça et ça",location: "Strasbourg", price: 150, admin_id: rand(114..123))
end

20.times do
	attendance = Attendance.create!(user_id: rand(114..123), event_id: rand(1..10), stripe_customer_id: Faker::Dessert.variety)
end