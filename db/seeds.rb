# frozen_string_literal: false

puts 'Cleaning all flats'
Flat.destroy_all

puts 'Generating 100 flats'
100.times do
  Flat.create!(
    name: Faker::Company.name,
    address: Faker::Address.full_address,
    description: Faker::Restaurant.description,
    price_per_night: rand(10..500),
    number_of_guests: rand(1..10)
  )
end
