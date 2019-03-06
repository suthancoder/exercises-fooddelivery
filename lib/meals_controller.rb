require_relative 'meals_view'
require_relative 'base_controller'

class MealsController < BaseController
  def initialize(meals_repository)
    @meals_repository = meals_repository
    @view = MealsView.new
  end

  def list
    meals = @meals_repository.list
    @view.meals_display(meals)
  end

  def add
    headers = @meals_repository.headers
    item = @view.add(headers)
    array = build_item(headers, item)
    new_meal = Meal.new(array.to_h)
    @meals_repository.add(new_meal)
  end
end
