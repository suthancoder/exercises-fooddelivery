require_relative 'view'
require_relative 'meal'
require_relative 'meals_repository'

class Meals_Controller
  def initialize(meals_repository)
    @meals_repository = meals_repository
    @view = View.new
  end

  def list
    meals =  @meals_repository.list_meals
    @view.display(meals)
  end

  def add
    meal = @view.add_meal
    new_meal = Meal.new(name: meal[0], price: meal[1])
    @meals_repository.add_meal(new_meal)
  end


  private


end
