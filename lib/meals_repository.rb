require_relative 'base_repository'
require_relative 'meal'

class MealsRepository < BaseRepository

  def build_element(item)
    Meal.new(item)
  end

end
