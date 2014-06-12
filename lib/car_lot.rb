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
    @cars[@@car_id] = [car.make, car.model, car.year, car.price]
    @@lot_value += car.price
  end

  # def retrieve_car(make, model, year)
  #   @cars.each do |id, attributes|
  #     attributes.select |
  #   end
  # end

  def lot_value
    @@lot_value
  end

end
