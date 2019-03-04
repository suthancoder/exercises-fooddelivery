class Customers_Controller
  def initialize(customers_repository)
    @customers_repository = customers_repository
  end

  def list
    @customers_repository.list
  end

end
