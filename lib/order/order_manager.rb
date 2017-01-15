require_relative 'order'

class OrderManager
  attr_accessor :orders, :OrderTypes

  def initialize
    @order_types = [:wait, :drive, :load, :unload]
    @orders = []
  end

  def get_number
    @orders.size
  end

  def add(new_order)
    @orders.push new_order
  end

  def has_order
    @orders.size > 0
  end
end
