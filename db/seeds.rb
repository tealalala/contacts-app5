# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

5.times do
  contact = Contact.new(first_name: Faker::Name.first_name, middle_name: Faker::Name.middle_name, last_name: Faker::Name.last_name, email: Faker::Internet.email, phonenumber: Faker::PhoneNumber.phone_number)
  contact.save
end
