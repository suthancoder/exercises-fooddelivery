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
    counter = 0
    employees = @employees_repository.list
    employees.each do |employee|
      a = employee.name
      b = name
      a == b ? counter += 1 : counter += 0

      # employee.name == name ? name_exists = true : name_exists = false
    end
    return counter
  end

    def checkpassword(name, password)
    manager = 0
    delivery = 0
    employees = @employees_repository.list
    employees.each do |employee|
      a = employee.name
      b = name
      c = employee.password
      d = password
      e = employee.role
      f = "manager"
      g = "delivery"

      # p a == b && c == d && e == f
      # p a == b && c == d && e == g

     a == b && c == d && e == f ? manager += 1 : manager += 0
      a == b && c == d && e == g ? delivery += 1 : delivery += 0

      # employee.name == name && employee.password == password && employee.role == "manager" ? password_matches = 1 : password_matches = 0
      # employee.name == name && employee.password == password && employee.role == "delivery" ? password_matches = 2 : password_matches = 0
    end

    return manager > delivery ? 1 : 2
  end

end
