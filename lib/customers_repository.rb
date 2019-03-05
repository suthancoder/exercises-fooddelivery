require_relative 'base_repository'
require_relative 'customer.rb'

class CustomersRepository < BaseRepository

  def build_element(item)
    Customer.new(item)
  end
end
