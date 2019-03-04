
class View
  def display(array)
    array.each_with_index do |row, index|
      puts "#{index} #{row.name}"
    end

  end

  def add_meal
    meal = []
    puts "Please provide meal name:"
    name = gets.chomp
    meal << name
    puts "Please provide meal price:"
    price = gets.chomp
    meal << price
    return meal
  end


end
