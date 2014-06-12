require_relative 'car.rb'

class UsedCar < Car
  attr_accessor :mileage

  @@mileage_depreciation_rate = 0.000001

  def initialize(make, model, year, msrp)
    super
    @damages = {}
  end

  def add_damage(damage)
    @damages[damage.description] = damage.cost
  end

  def mileage_depreciation
    @msrp * (mileage * @@mileage_depreciation_rate)
  end

  def damage_depreciation
    damage_cost = 0
    @damages.each do |damage, cost|
      damage_cost += cost
    end
    damage_cost
  end

  def depreciated_value
    [(@msrp - age_depreciation - mileage_depreciation - damage_depreciation), 0].max
  end

  def price
    depreciated_value * (1 + manager_markup)
  end

end
