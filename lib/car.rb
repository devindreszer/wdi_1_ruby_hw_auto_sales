require 'date'

class Car
  attr_reader :make, :model, :year, :msrp
  attr_accessor :manager_markup

  @@age_depeciation_rate = 0.05

  def initialize(make, model, year, msrp)
    @make = make
    @model = model
    @year = year
    @msrp = msrp
  end

  def age_depreciation
    age = Date.today.year - year
    @msrp * (age * @@age_depeciation_rate)
  end

  def depreciated_value
    [(@msrp - age_depreciation), 0 ].max
  end

  def price
    (depreciated_value * (1 + manager_markup)).ceil
  end

end
