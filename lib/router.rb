# require_relative 'what'

class Router
  def initialize
    @choice = 100
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
        puts "Choose 1"
      when 2
        puts "Choose 2"
      else
        puts "no choices"
    end
  end


end
