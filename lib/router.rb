
class Router

  def initialize(meals_controller, customers_controller, employees_controller, orders_controller)
    @choice = [10,0]
    @meals_controller = meals_controller
    @customers_controller = customers_controller
    @employees_controller = employees_controller
    @orders_controller = orders_controller
    @session = 0
  end

  def run
    password
    if @session == 1
      manager_menu
    elsif @session == 2
      delivery_menu
    else
      puts "Unauthorised to access system"
    end
  end

  def manager_menu
    home_menu
  end

  def delivery_menu
    puts "Delvery man menu here"
  end



  def home_menu
    while @choice[0] != 0
      puts "0. Exit"
      puts "1. Customer database"
      puts "2. Meal database"
      puts "3. Employee database"
      puts "4. Order database"
      puts "Type number to choose relevant option"
      @choice[0] = gets.chomp.to_i
      if @choice[0] == 1
        customer_menu
      elsif @choice[0] == 2
        meal_menu
      elsif @choice[0] == 3
        employee_menu
      elsif @choice[0] == 4
        order_menu
      end
      direct(@choice)
    end
  end


  def order_menu
      puts "0. Exit"
      puts "1. List all orders"
      puts "2. Add a new order"
      puts "Type number to choose relevant option"
      @choice[1] = gets.chomp.to_i
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

  def employee_menu
      puts "0. Exit"
      puts "1. List all employees"
      puts "2. Add a new employees"
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
      when 3
        case @choice[1]
          when 1
            @employees_controller.list
          when 2
            @employees_controller.add
          else
            puts "no choices"
        end
      when 4
        case @choice[1]
          when 1
            @orders_controller.list
          when 2
            @orders_controller.add
          else
            puts "no choices"
        end
    end
  end

private
  def password
    puts "What is your username?"
    username = gets.chomp
    if @employees_controller.checkname(username) > 0
      puts "What is your password"
      password = gets.chomp
        if @employees_controller.checkpassword(username, password) == 1
          @session = 1
          puts "Username and password verified and is a manager"
          @session = 1
        elsif @employees_controller.checkpassword(username, password) == 2
          puts "Username and password verified and is a delivery person"
          @session = 2
        else
          puts "Username and password do not match"
        end
    else
      puts "Username does not exist"
    end
  end
end
