# require 'what'
require 'CSV'
require_relative 'lib/router.rb'



Meal_DB_File = File.join(File.dirname( __FILE__), 'data/meals.csv')
Customer_DB_File = File.join(File.dirname( __FILE__), 'data/customers.csv')





router = Router.new()

router.run
