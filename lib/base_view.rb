
class BaseView
  def add(headers)
    item = []
    headers.each do |header|
      if header != "id"
        puts "Please provide the #{header}"
        data = gets.chomp
        item << data
      end
    end
    return item
  end
end
