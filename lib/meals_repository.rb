require 'csv'
require_relative 'meal'

class Meals_Repository
    def initialize (csvfile)
    @csvfile = csvfile
    @meals = []
    load_csv
  end

  def list_meals
    return @meals
  end

  def add_meal
  end

  def delete_meal
  end

  def update_meal
  end

  private

  def load_csv
    CSV.foreach(@csvfile, headers: :first_row, header_converters: :symbol) do |row|
     @meals << Meal.new(row)
    end
  end

  def save_csv
  end

end
