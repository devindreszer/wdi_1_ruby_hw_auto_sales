class CarLot
  attr_reader :name, :cars, :lot_value, :lot_revenue

  @@car_id = 0
  @@lot_value = 0
  @@lot_revenue = 0

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
      price: car.price,
      sold: car.sold
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

  def retrieve_cars_by_sold_status(sold)
    @cars.select { |cars, attributes| attributes[:sold] == sold }
  end

  def lot_value
    @@lot_value
  end

  def lot_revenue
    @@lot_revenue
  end

  def sold_car(car)
    @cars.each do |cars, attributes|
      if (attributes[:make] == car.make &&
        attributes[:model] == car.model &&
        attributes[:year] == car.year &&
        attributes[:price] == car.price &&
        attributes[:sold] == false)
        attributes[:sold] = true
        @@lot_revenue += attributes[:price]
      end
    end
  end

end
