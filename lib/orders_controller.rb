require_relative 'orders_view'
require_relative 'customers_view'
require_relative 'meals_view'
require_relative 'employees_view'
require_relative 'base_controller'

class OrdersController < BaseController
  def initialize(orders_repository, customers_repository, meals_repository, employees_repository)
    @orders_repository = orders_repository
    @customers_repository = customers_repository
    @meals_repository = meals_repository
    @employees_repository = employees_repository
    @view = OrdersView.new
    @view_customers = CustomersView.new
    @view_meals = MealsView.new
    @view_employees = EmployeesView.new
  end

  def list
    real_orders_array = []
    @orders = @orders_repository.list
    real_orders_array = real_orders(@orders)
    @view.orders_display(real_orders_array)
  end

  def add

    headers = @orders_repository.headers
    item = []
    item << select_customer
    item << select_meal
    item << select_employee
    item << false
    array = build_item(headers, item)
    new_order = Order.new(array.to_h)
    @orders_repository.add(new_order)

  end

  def assign_order
  end

  def real_orders(orders_array)
    real_orders = []
    orders_array.each do |order|
      real_order = {}
      real_order[:id] = order.id
      real_order[:customer] = get_customer(order.customer.to_i)
      real_order[:meal] = get_meal(order.meal.to_i)
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

  def select_customer
    customers = @customers_repository.list
    @view_customers.customers_display(customers)
    puts "Provide number of customer"
    id = gets.chomp
    return id
  end

  def select_meal
    meals = @meals_repository.list
    @view_meals.meals_display(meals)
    puts "Provide number of meal"
    id = gets.chomp
    return id
  end

  def select_employee
    employees = @employees_repository.list
    @view_employees.employees_display(employees)
    puts "Provide number of employee"
    id = gets.chomp
    return id
  end

end
