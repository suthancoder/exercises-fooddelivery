
class View
  def display(array)
    array.each_with_index do |row, index|
      puts "#{index} #{row.name} #{row.price}"
    end

  end

end
