# require 'what'
require_relative 'lib/router.rb'
require_relative 'lib/meals_controller'
require_relative 'lib/meals_repository'


meal_file = File.join(File.dirname( __FILE__), 'data/meals.csv')
customer_file = File.join(File.dirname( __FILE__), 'data/customers.csv')

meals_repository = Meals_Repository.new(meal_file)
meals_controller = Meals_Controller.new(meals_repository)


router = Router.new(meals_controller)

router.run
