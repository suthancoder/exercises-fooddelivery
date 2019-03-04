require 'csv'
require_relative 'customer.rb'

class Customers_Repository

  def initialize(csvfile)
    @csvfile = csvfile
    @customers = []
    load_csv
  end

  def list
    @customers
  end

  def add
  end


  def save_csv
  end

  def load_csv
    CSV.foreach(@csvfile, headers: :first_row, header_converters: :symbol) do |row|
      customer = Customer.new(row)
      @customers << customer
    end
  end

end
