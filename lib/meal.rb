
class Meal
  attr_reader :name, :price
  def initialize (attributes = {})
    @name = attributes[:name]
    @price = attributes[:price] || 0.to_s
  end

  def to_csv_row
    [@name, @price]
  end

  def self.headers
    %w(@name, @price)
  end


end
