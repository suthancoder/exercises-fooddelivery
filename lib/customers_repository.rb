require 'csv'

class Customers_Repository

  def initialize(csvfile)
    @csvfile = csvfile
    @customers = []
    p @csvfile

  end

  def list
    puts "list customers - Customer_Repository"

  end

  def add
  end


  def save_csv
  end

  # def load_csv
  #   array = CSV.read("customers.csv")
  #     p array
  # end
end
