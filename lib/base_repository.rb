require 'csv'

class BaseRepository

  def initialize(csvfile)
    @csvfile = csvfile
    @elements = []
    @next_id = 1
    load_csv
  end

  def list
    return @elements
  end

  def add(element)
    element.id = @next_id.to_s
    @elements << element
    save_csv
    @next_id += 1
  end

  def find(id)
    found = nil
    @elements.each do |element|
      if element.id == id
        puts element.class
        found = element
      end
    end
    return found
  end

  def destroy

  end

  def load_csv
    CSV.foreach(@csvfile, headers: :first_row, header_converters: :symbol) do |row|
     @elements << build_element(row)
     @next_id += 1
    end
  end

  def headers
    header_array = []
    headers = CSV.read(@csvfile, headers: true).headers
    headers.each do |header|

      header_array << header.to_s.sub(/[@]/, '').sub(/[,]/, '')
    end
    return header_array
  end

  def save_csv
    CSV.open(@csvfile, 'w') do |csv|
      csv << @elements.first.class.headers
        @elements.each do |element|
          csv << element.to_csv_row
        end
    end
  end

end
