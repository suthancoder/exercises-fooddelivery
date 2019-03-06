require_relative 'orders_view'
require_relative 'base_controller'

class OrdersController < BaseController
  def initialize(orders_repository, customers_repository, meals_repository, employees_repository)
    @orders_repository = orders_repository
    @customers_repository = customers_repository
    @meals_repository = meals_repository
    @employees_repository = employees_repository
    @view = OrdersView.new
  end

  def list
    real_orders_array = []
    @orders = @orders_repository.list
    real_orders_array = real_orders
    @view.orders_display(real_orders_array)
  end

  def add

    headers = @orders_repository.headers
    item = @view.add(headers)
    array = build_item(headers, item)
    new_order = Orders.new(array.to_h)
    @orders_repository.add(new_order)

  end

  def assign_order
  end

  def real_orders
    real_orders = []
    real_order = {}
    @orders.each do |order|
      real_order[:id] = order.id
      real_order[:customer] = get_customer(order.customer.to_i)
      real_order[:meal] = get_customer(order.customer.to_i)
      real_order[:employee] = get_employee(order.employee.to_i)
      real_order[:delivered] = order.delivered
      real_orders << real_order
    end
    return real_orders
  end

  def get_customer(id)
    customer = @customers_repository.find(id)
    return customer
  end

  def get_meal(id)
        meal = @meals_repository.find(id)
    return meal
  end

  def get_employee(id)
    employee = @employees_repository.find(id)
    return employee
  end

end
