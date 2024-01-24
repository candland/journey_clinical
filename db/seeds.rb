# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

insurance_names = [
  "UnitedHealth Group",
  "Elevance Health",
  "Cigna",
  "Progressive Insurance",
  "Marsh McLennan Companies",
  "Humana",
  "MetLife",
  "AIG",
  "Travelers",
  "Arthur J. Gallagher & Co."
]

insurance_names.each do |name|
  Insurance.find_or_create_by!(name: name)
end

require "faker"

100.times do |i|
  Therapist.create!(
    name: Faker::Name.name,
    remote: Faker::Boolean.boolean,
    street: Faker::Address.street_address,
    street_2: Faker::Address.secondary_address,
    city: Constants::CITIES.sample(1).first,
    state: "NY",
    zip: Faker::Address.zip_code,
    insurances: Insurance.all.sample(Random.new.rand(10))
  )
end
