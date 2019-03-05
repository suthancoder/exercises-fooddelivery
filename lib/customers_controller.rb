require_relative 'customers_view'
require_relative 'base_controller'

class CustomersController < BaseController
  def initialize(customers_repository)
    @customers_repository = customers_repository
    @view = CustomersView.new
  end

  def list
    customers = @customers_repository.list
    @view.customers_display(customers)
  end

  def add
    headers = @customers_repository.headers
    item = @view.add(headers)
    array = build_item(headers, item)
    new_item = Customer.new(array.to_h)
    @customers_repository.add(new_item)
  end

end
