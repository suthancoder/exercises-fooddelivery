require_relative 'base_repository'
require_relative 'order'

class OrdersRepository < BaseRepository

  def build_element(item)
    item[:id] = item[:id].to_i
    Order.new(item)
  end

  def real_order

  end


end
