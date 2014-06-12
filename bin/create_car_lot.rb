require_relative '../lib/car_lot.rb'
require_relative '../lib/used_car.rb'
require_relative '../lib/damage.rb'

civic = UsedCar.new('Honda', 'Civic', 2008, 20_000)

civic.manager_markup = 0.10
civic.mileage = 10_000

scratched = Damage.new("scratched", 2000)
civic.add_damage(scratched)

civic2 = UsedCar.new('Honda', 'Civic', 1998, 20_000)

civic2.manager_markup = 0.10
civic2.mileage = 50_000

honest_toms = CarLot.new('Honest Toms')

honest_toms.add_car(civic)
honest_toms.add_car(civic2)

puts honest_toms.lot_value
