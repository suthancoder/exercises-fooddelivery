require_relative 'base_repository'
require_relative 'employee.rb'

class EmployeesRepository < BaseRepository

  def build_element(item)
    Employee.new(item)
  end
end
