require_relative '../models/restaurant'
require 'faker'

10.times do
	r = Restaurant.new(name: Faker::Company.name, address: Faker::Address.street_address, rating: rand(1..5), logo_url: Faker::Company.logo)
	r.save
end
