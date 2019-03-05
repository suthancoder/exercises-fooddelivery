# require 'what'
require_relative 'lib/router.rb'
require_relative 'lib/meals_controller'
require_relative 'lib/meals_repository'
require_relative 'lib/customers_controller'
require_relative 'lib/customers_repository'

meal_file = File.join(File.dirname( __FILE__), 'data/meals.csv')
customers_file = File.join(File.dirname( __FILE__), 'data/customers.csv')

meals_repository = MealsRepository.new(meal_file)
meals_controller = MealsController.new(meals_repository)

customers_repository = CustomersRepository.new(customers_file)
customers_controller = CustomersController.new(customers_repository)

router = Router.new(meals_controller, customers_controller)

router.run
