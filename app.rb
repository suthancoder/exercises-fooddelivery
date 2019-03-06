# require 'what'
require_relative 'lib/router.rb'
require_relative 'lib/meals_controller'
require_relative 'lib/meals_repository'
require_relative 'lib/customers_controller'
require_relative 'lib/customers_repository'
require_relative 'lib/employees_controller'
require_relative 'lib/employees_repository'
require_relative 'lib/orders_controller'
require_relative 'lib/orders_repository'

meal_file = File.join(File.dirname( __FILE__), 'data/meals.csv')
customers_file = File.join(File.dirname( __FILE__), 'data/customers.csv')
employees_file =  File.join(File.dirname( __FILE__), 'data/employees.csv')
orders_file = File.join(File.dirname( __FILE__), 'data/orders.csv')

meals_repository = MealsRepository.new(meal_file)
meals_controller = MealsController.new(meals_repository)

customers_repository = CustomersRepository.new(customers_file)
customers_controller = CustomersController.new(customers_repository)

employees_repository = EmployeesRepository.new(employees_file)
employees_controller = EmployeesController.new(employees_repository)

orders_repository = OrdersRepository.new(orders_file)
orders_controller = OrdersController.new(orders_repository, customers_repository, meals_repository, employees_repository)

router = Router.new(meals_controller, customers_controller, employees_controller, orders_controller)

router.run
