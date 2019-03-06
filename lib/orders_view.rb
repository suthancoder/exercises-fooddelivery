require_relative 'base_view'

class OrdersView < BaseView
  def orders_display(array)
    array.each_with_index do |row, index|
      puts "#{row[:id]} #{row[:customer].name} #{row[:meal].name} #{row[:employee].name} #{row[:delivered]}"
    end
  end
end
