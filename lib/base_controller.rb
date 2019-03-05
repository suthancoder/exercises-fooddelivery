
class BaseController
  def build_item(headers, item)
    array = []
    if item.length == headers.length
      item.length.times do |i|
        array <<[headers[i-1].to_sym, item[i-1]]
      end
    else
      puts "Error building item"
    end
    return array
  end
end

