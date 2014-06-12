class CarLot
  attr_reader :name

  @@car_id = 0
  @@lot_value = 0

  def initialize(name)
    @name = name
    @cars = {}
  end

  def add_car(car)
    @@car_id += 1
    @cars[@@car_id] = {
      make: car.make,
      model: car.model,
      year: car.year,
      price: car.price
    }
    @@lot_value += car.price
  end

  def retrieve_cars_by_make(make)
    @cars.select { |cars, attributes| attributes[:make] == make }
  end

  def retrieve_cars_by_model(model)
    @cars.select { |cars, attributes| attributes[:model] == model }
  end

  def retrieve_cars_by_year(year)
    @cars.select { |cars, attributes| attributes[:year] == year }
  end

  def lot_value
    @@lot_value
  end

end
