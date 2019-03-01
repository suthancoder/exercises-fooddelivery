require_relative 'view'

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
  end


  private


end
