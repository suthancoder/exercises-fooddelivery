require_relative 'base_repository'
require_relative 'employee.rb'

class EmployeesRepository < BaseRepository

  def build_element(item)
    item[:id] = item[:id].to_i
    Employee.new(item)
  end
end
