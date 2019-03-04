# require 'what'
require_relative 'lib/router.rb'
require_relative 'lib/meals_controller'
require_relative 'lib/meals_repository'
require_relative 'lib/customers_controller'
require_relative 'lib/customers_repository'

meal_file = File.join(File.dirname( __FILE__), 'data/meals.csv')
customers_file = File.join(File.dirname( __FILE__), 'data/customers.csv')

meals_repository = Meals_Repository.new(meal_file)
meals_controller = Meals_Controller.new(meals_repository)

customers_repository = Customers_Repository.new(customers_file)
customers_controller = Customers_Controller.new(customers_repository)

router = Router.new(meals_controller, customers_controller)

router.run
