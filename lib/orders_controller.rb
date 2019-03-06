require_relative 'orders_view'
require_relative 'base_controller'

class OrdersController < BaseController
  def initialize(orders_repository, customers_repository)
    @orders_repository = orders_repository
    @customers_repository = customers_repository
    @view = OrdersView.new
    @orders = []
  end

  def list
    @orders = @orders_repository.list
    real_orders
    @view.orders_display(@orders)
  end

  def assign_order
  end

  def real_orders
    @orders.each do |order|
      get_customer(order.customer.to_i)
    end

  end

  def get_customer(id)
    customers = @customers_repository.list
  end

  def get_meal
  end

  def get_employee
  end

end
