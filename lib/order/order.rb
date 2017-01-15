# flags = Foo::BAR | Foo::BAZ # flags = 3

class Order
  attr_accessor :action

  def initialize(type)
    @action = type
  end
  # the order can be decomposed in several tasks.
end
