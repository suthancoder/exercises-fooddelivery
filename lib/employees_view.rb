require_relative 'base_view'

class EmployeesView < BaseView
  def employees_display(array)
    array.each_with_index do |row, index|
      puts "#{row.id} #{row.name} #{row.role} #{row.password}"
    end
  end
end
