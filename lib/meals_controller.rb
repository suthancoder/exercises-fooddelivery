

class Meals_Controller
  def initialize(meals_repository)
  end

  def list
    puts meals_repository.list_meals
  end



  private


end
