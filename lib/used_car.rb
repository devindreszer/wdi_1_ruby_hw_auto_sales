require_relative 'car.rb'

class UsedCar < Car
  attr_accessor :mileage
  attr_reader :damages

  MILEAGE_DEPRECIATION_RATE = 0.000001

  def initialize(make, model, year, msrp)
    super
    @damages = {}
  end

  def damaged?
    damages.any?
  end

  def add_damage(damage)
    @damages[damage.description] = damage.cost
  end

  def mileage_depreciation
    msrp * (mileage * MILEAGE_DEPRECIATION_RATE)
  end

  def damage_depreciation
    damage_cost = 0
    @damages.each do |damage, cost|
      damage_cost += cost
    end
    damage_cost
  end

  def value
    [(msrp - age_depreciation - mileage_depreciation - damage_depreciation), 0].max
  end

end
