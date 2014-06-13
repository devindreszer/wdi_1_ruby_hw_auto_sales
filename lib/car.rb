require 'date'

class Car
  attr_reader :make, :model, :year, :msrp
  attr_accessor :manager_markup, :id, :sold

  AGE_DEPRECIATION_RATE = 0.05
  @@id = 0

  def initialize(make, model, year, msrp)
    @make = make
    @model = model
    @year = year
    @msrp = msrp
    @sold = false
    @@id += 1
  end

  def age_depreciation
    age = Date.today.year - year
    @msrp * (age * AGE_DEPRECIATION_RATE)
  end

  def value
    [(@msrp - age_depreciation), 0 ].max
  end

  def price
    (value * (1 + manager_markup)).floor
  end

  def show
    "Car #{@@id}: #{@year} #{@make} #{@model}"
  end

end
