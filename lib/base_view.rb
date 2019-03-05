
class BaseView
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
