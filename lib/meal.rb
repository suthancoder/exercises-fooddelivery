
class Meal
  attr_reader: :name, :price
  def initialize (attributes = {})
    @name = attributes[:name]
    @price = attributes[:price] || 0.to_s
  end

end
