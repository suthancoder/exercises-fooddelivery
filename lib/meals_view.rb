require_relative 'base_view'

class MealsView < BaseView
  def meals_display(array)
    array.each_with_index do |row, index|
      puts "#{index} #{row.name} #{row.price}"
    end
  end
end
