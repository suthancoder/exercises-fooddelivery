class Customer
  attr_reader :name, :address
  attr_accessor :id
  def initialize(attributes = {})
    @id = attributes[:id]
    @name = attributes[:name]
    @address = attributes[:address]
  end

  def to_csv_row
    [@id, @name, @address]
  end

  def self.headers
    %w(id name address)
  end
end
