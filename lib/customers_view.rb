require_relative 'base_view'

class CustomersView < BaseView
  def customers_display(array)
    array.each_with_index do |row, index|
      puts "#{row.id} #{row.name} #{row.address}"
    end
  end
end
