require_relative '../lib/used_car.rb'
require_relative '../lib/damage.rb'

civic = UsedCar.new('Honda', 'Civic', 1998, 20_000)

civic.manager_markup = 0.10
civic.mileage = 10_000

puts civic.mileage
puts civic.price

scratched = Damage.new("scratched", 200)
civic.add_damage(scratched)

puts civic.price

missing_hubs = Damage.new("missing_hubs", 800)
civic.add_damage(missing_hubs)

puts civic.price
