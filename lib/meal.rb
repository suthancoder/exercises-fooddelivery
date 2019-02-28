require_relative 'WHAT'

class Meal
  attr_reader: :name, :price
  def initialize (attributes = {})
    @name = attributes[:name]
    @price = attributes[:price] || 0.to_s
  end

  def list
  end

  def add
  end
end
