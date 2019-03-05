class Customer
  attr_reader :name, :address
  def initialize(attributes = {})
    @name = attributes[:name]
    @address = attributes[:address]
  end

  def to_csv_row
    [@name, @address]
  end


  def self.headers
    %w(@name, @address)
  end
end
