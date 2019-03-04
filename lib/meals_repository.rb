require 'csv'
require_relative 'meal'

class Meals_Repository

  def initialize (csvfile)
    @csvfile = csvfile
    @meals = []
    load_csv
  end

  def list_meals
    p Meal.headers[0].sub(/[@]/, '').replace(',')
    return @meals
  end

  def add_meal(meal)
    @meals << meal
    save_csv
  end

  def delete_meal
  end

  def update_meal
  end


  def load_csv
    CSV.foreach(@csvfile, headers: :first_row, header_converters: :symbol) do |row|
     @meals << Meal.new(row)
    end
  end

  def save_csv
    CSV.open(@csvfile, 'w') do |csv|
      csv << @meals.first.class.headers
        @meals.each do |meal|
          csv << meal.to_csv_row
        end
    end
  end

end
