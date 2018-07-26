require 'faker'

10.times do |index|

  Patient.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name
  )

  Doctor.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    speciality: Faker::Cannabis.category,
    postal_code: Faker::Address.zip
  )

  Appoitment.create(
    date: Faker::Date.backward(30),
    patient_id: rand(Patient.first.id..Patient.last.id),
    doctor_id: rand(Doctor.first.id..Doctor.last.id)
  )

end
