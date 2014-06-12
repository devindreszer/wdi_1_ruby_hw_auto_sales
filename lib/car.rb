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

  def age_depreciated_value
    age = Date.today.year - year
    [@msrp * (1 - age * @@age_depeciation_rate), 0].max.ceil
  end

  def price
    age_depreciated_value * (1 + manager_markup)
  end

end
