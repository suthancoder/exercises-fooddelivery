class Customer
  attr_reader :name, :address
  def initialize(attributes = {})
    @name = attributes[:name]
    @address = attributes[:address]
  end

  def row_to_csv
    [@name, @address]
  end


  def self.headers
    %w(@name, @address)
  end
end
