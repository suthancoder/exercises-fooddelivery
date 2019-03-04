
class View
  def display(headers, array)
    array.each_with_index do |row, index|
      puts "#{index} #{row.name}"
    end

  end

  def add(headers)
    item = []
    headers.each do |header|
      puts "Please provide the #{header}"
      data = gets.chomp
      item << data
    end
    return item
  end

end
