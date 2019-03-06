require_relative 'base_view'

class OrdersView < BaseView
  def orders_display(array)
    array.each_with_index do |row, index|
      p row
      puts "#{row.id} #{row.customer} #{row.meal}"
    end
  end
end
