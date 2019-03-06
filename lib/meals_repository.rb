require_relative 'base_repository'
require_relative 'meal'

class MealsRepository < BaseRepository

  def build_element(item)
    item[:id] = item[:id].to_i
    Meal.new(item)
  end

end
