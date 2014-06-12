require_relative '../lib/car_lot.rb'
require_relative '../lib/used_car.rb'
require_relative '../lib/damage.rb'

#create new car
ridgeline = Car.new('Honda', 'Ridgeline', 2014, 40_000)
ridgeline.manager_markup = 0.20

# create used cars
civic = UsedCar.new('Honda', 'Civic', 2008, 20_000)

civic.manager_markup = 0.10
civic.mileage = 10_000

scratched = Damage.new("scratched", 2000)
civic.add_damage(scratched)

accord = UsedCar.new('Honda', 'Accord', 1998, 25_000)

accord.manager_markup = 0.10
accord.mileage = 50_000

element = UsedCar.new('Honda', 'Element', 2005, 30_000)

element.manager_markup = 0.15
element.mileage = 80_000

# create car lot
honest_toms = CarLot.new('Honest Toms')

honest_toms.add_car(ridgeline)
honest_toms.add_car(civic)
honest_toms.add_car(accord)
honest_toms.add_car(element)

puts honest_toms.lot_value

puts honest_toms.retrieve_cars_by_make('Honda')
puts honest_toms.retrieve_cars_by_model('Civic')
puts honest_toms.retrieve_cars_by_year(1998)

honest_toms.sold_car(civic)
puts honest_toms.cars
puts honest_toms.lot_revenue
puts honest_toms.retrieve_cars_by_sold_status(false)
