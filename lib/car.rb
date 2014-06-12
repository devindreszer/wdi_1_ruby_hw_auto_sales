require 'date'

class Car
  attr_reader :make, :model, :year, :msrp, :sold
  attr_accessor :manager_markup

  AGE_DEPRECIATION_RATE = 0.05

  def initialize(make, model, year, msrp)
    @make = make
    @model = model
    @year = year
    @msrp = msrp
    @sold = false
  end

  def age_depreciation
    age = Date.today.year - year
    @msrp * (age * AGE_DEPRECIATION_RATE)
  end

  def depreciated_value
    [(@msrp - age_depreciation), 0 ].max
  end

  def price
    (depreciated_value * (1 + manager_markup)).ceil
  end

end
