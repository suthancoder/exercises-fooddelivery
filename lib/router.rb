
class Router

  def initialize(meals_controller)
    @choice = 100
    @meals_controller = meals_controller
  end

  def run
    while @choice != 0
      puts "0. Exit"
      puts "1. List all meals"
      puts "2. Add a new meal"
      puts "Type number to choose relevant option"
      @choice = gets.chomp.to_i
      direct(@choice)
    end
  end

  def direct(choice)
    case choice
      when 1
        @meals_controller.list
      when 2
        @meals_controller.add
      else
        puts "no choices"
    end
  end


end
