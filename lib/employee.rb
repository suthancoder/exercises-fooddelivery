class Employee
  attr_reader :name, :role, :password
  attr_accessor :id
  def initialize(attributes = {})
    @id = attributes[:id]
    @name = attributes[:name]
    @role = attributes[:role]
    @password = attributes[:password]
  end

  def to_csv_row
    [@id, @name, @role, @password]
  end

  def self.headers
    %w(id name role password)
  end
end
