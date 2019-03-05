
class Router

  def initialize(meals_controller, customers_controller)
    @choice = [10,0]
    @meals_controller = meals_controller
    @customers_controller = customers_controller
  end

  def run
    while @choice[0] != 0
      puts "0. Exit"
      puts "1. Customer database"
      puts "2. Meal database"
      puts "Type number to choose relevant option"
      @choice[0] = gets.chomp.to_i
      if @choice[0] == 1
        customer_menu
      elsif @choice[0] == 2
        meal_menu
      end
      direct(@choice)
    end
  end

  def meal_menu
      puts "0. Exit"
      puts "1. List all meals"
      puts "2. Add a new meal"
      puts "Type number to choose relevant option"
      @choice[1] = gets.chomp.to_i
  end

  def customer_menu
      puts "0. Exit"
      puts "1. List all customers"
      puts "2. Add a new customer"
      puts "Type number to choose relevant option"
      @choice[1] = gets.chomp.to_i
  end




  def direct(choice)
    case @choice[0]
      when 1
        case @choice[1]
          when 1
            @customers_controller.list
          when 2
            @customers_controller.add
          else
            puts "no choices"
        end
      when 2
        case @choice[1]
          when 1
            @meals_controller.list
          when 2
            @meals_controller.add
          else
            puts "no choices"
        end
    end
  end
end
