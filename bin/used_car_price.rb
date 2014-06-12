require_relative '../lib/used_car.rb'

civic = UsedCar.new('Honda', 'Civic', 1998, 20_000)

civic.manager_markup = 0.10

civic.mileage = 180_000

puts civic.mileage

puts civic.price
