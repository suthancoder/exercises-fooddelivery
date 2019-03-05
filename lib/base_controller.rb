
class BaseController
  def build_item(headers, item)
    array = []
    if item.length == headers.length-1
      item.length.times do |i|
        array <<[headers[i+1].to_sym, item[i]]

      end
    else
      puts "Error building item"
    end

    return array
  end
end

