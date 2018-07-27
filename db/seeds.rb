# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

10.times do
 patient = Patient.create(first_name: Faker::Name.first_name,
                last_name: Faker::Name.last_name)
end

5.times do
 doctor = Doctor.create(first_name: Faker::Name.first_name,
 				last_name: Faker::Name.last_name,
 				postal_code: Faker::Address.zip)
end

10.times do
  city = City.create(city_name: Faker::StarWars.planet)
end


15.times do
  appoitement = Appoitment.create(date: Faker::Date.forward(30),
                    patient_id: rand((Patient.first.id)..(Patient.last.id)),
                    doctor_id: rand((Doctor.first.id)..(Doctor.last.id)),
                    city_id: rand((City.first.id)..(City.last.id)))
end

30.times do
 specialty = Specialty.create(name: Faker::Superhero.power)
end
