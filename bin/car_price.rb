require_relative '../lib/car.rb'

civic = Car.new('Honda', 'Civic', 1998, 20_000)

civic.manager_markup = 0.10

puts civic.price
