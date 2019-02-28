
require_relative 'meal'

class Meals_Controller
  def initialize (csvfile)
    @csvfile = csvfile
    @meals = []
    load_csv
  end

  def list_meals
    @meals
  end

  def add_meal
  end

  def delete_meal
  end

  def update_meal
  end

  private

  def load_csv
  end

  def save_csv
  end

end
