require_relative 'employees_view'
require_relative 'base_controller'

class EmployeesController < BaseController
  def initialize(employees_repository)
    @employees_repository = employees_repository
    @view = EmployeesView.new
  end

  def list
    employees = @employees_repository.list
    @view.employees_display(employees)
  end

  def add
    headers = @employees_repository.headers
    item = @view.add(headers)
    array = build_item(headers, item)
    new_item = Employee.new(array.to_h)
    @employees_repository.add(new_item)
  end

  def checkname(name)
    name_exists = false
    employees = @employees_repository.list
    employees.each do |employee|

      employee.name == name ? name_exists = true : name_exists = false
    end
    return name_exists
  end

    def checkpassword(name, password)
    password_matches = false
    employees = @employees_repository.list
    employees.each do |employee|
      employee.name == name && employee.password == password && employee.role == "manager" ? password_matches = true : password_matches = false
    end
    return password_matches
  end

end
