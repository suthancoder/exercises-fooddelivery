require_relative 'view'

class Customers_Controller
  def initialize(customers_repository)
    @customers_repository = customers_repository
    @view = View.new
  end

  def list
    customers = @customers_repository.list
    @view.display(customers)
  end

end
