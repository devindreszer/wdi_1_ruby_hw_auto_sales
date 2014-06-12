require 'date'

class Car
  attr_reader :make, :model, :year, :msrp
  attr_accessor :manager_markup

  @@depeciation_rate = 0.05

  def initialize(make, model, year, msrp)
    @make = make
    @model = model
    @year = year
    @msrp = msrp
  end

  def depreciated_value
    age = Date.today.year - year
    [(@msrp - age * (@msrp * @@depeciation_rate)), 0].max
  end

  def price
    depreciated_value * (1 + manager_markup)
  end

end
