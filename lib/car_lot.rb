class CarLot
  attr_reader :name, :cars, :lot_value, :lot_revenue

  @@lot_value = 0
  @@lot_revenue = 0

  def initialize(name)
    @name = name
    @cars = []
  end

  def add_car(car)
    @cars.push(car)
    @@lot_value += car.price
  end

  def show_cars(list_of_cars)
    list_of_cars.map do |car|
      car.show
    end
  end

  def retrieve_cars_by_make(make)
    show_cars(cars = @cars.select { |car| car.make == make })
  end

  def retrieve_cars_by_model(model)
    show_cars(@cars.select { |car| car.model == model })
  end

  def retrieve_cars_by_year(year)
    show_cars(@cars.select { |car| car.year == year })
  end

  def retrieve_cars_by_sold_status(sold)
    show_cars(@cars.select { |car| car.sold == sold })
  end

  def lot_value
    @@lot_value
  end

  def lot_revenue
    @@lot_revenue
  end

  def sold_car(car)
    if @cars.include?(car) && car.sold == false
      car.sold = true
      @@lot_revenue += car.price
      @@lot_value -= car.price
    end
  end

end
