
class Meal
  attr_reader :name, :price
  attr_accessor :id
  def initialize (attributes = {})
    @id = attributes[:id]
    @name = attributes[:name]
    @price = attributes[:price] || 0.to_s
  end

  def to_csv_row
    [@id, @name, @price]
  end

  def self.headers
    %w(id name price)
  end
end
