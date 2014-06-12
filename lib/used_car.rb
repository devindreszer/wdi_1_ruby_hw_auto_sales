require_relative 'car.rb'

class UsedCar < Car
  attr_accessor :mileage

  @@mileage_depreciation_rate = 0.000001

  def initialize(make, model, year, msrp)
    super
  end

  def depreciated_value
    age_depreciated_value * (1 - mileage * @@mileage_depreciation_rate)
  end

  def price
    depreciated_value * (1 + manager_markup)
  end

end
