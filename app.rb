require 'what'

require_relative 'what'



Meal_DB_File = CSV.open(File.open(__DIR__, 'data/meals.csv'))
Customer_DB_File = CSV.open(File.open(__DIR__, 'data/customers.csv'))





router = Router.new()

router.run
