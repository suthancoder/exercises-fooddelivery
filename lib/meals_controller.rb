require_relative 'view'
require_relative 'meal'
require_relative 'meals_repository'

class Meals_Controller
  def initialize(meals_repository)
    @meals_repository = meals_repository
    @view = View.new
  end

  def list
    meals = @meals_repository.list_meals
    headers = @meals_repository.headers
    @view.display(headers, meals)
  end

  def add
    array = []
    headers = @meals_repository.headers
    meal = @view.add(headers)
    if meal.length == headers.length
      meal.length.times do |i|
        array <<[headers[i-1].to_sym, meal[i-1]]
      end
    else
      puts "Error building item"
    end
    new_meal = Meal.new(array.to_h)
    @meals_repository.add_meal(new_meal)
  end



  private
end
