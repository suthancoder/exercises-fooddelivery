
class Order
  attr_reader :customer, :meal, :employee, :delivered
  attr_accessor :id

  def initialize(attributes = {})
    @id = attributes[:id]
    @customer = attributes[:customer]
    @meal = attributes[:meal]
    @employee = attributes[:employee]
    @delivered = false
  end

  def to_csv_row
    [@id, @customer, @meal, @employee, @delivered]
  end

  def self.headers
    %w(id customer meal employee delivered)
  end
end
