Given(/^the arc has \((\d+)\) order\/s$/) do |num_orders|
  @arc.get_orders_size == num_orders
end

Given(/^the arc is ready to drive$/) do
  #pending # Write code here that turns the phrase above into concrete actions
end

When(/^an drive order is asigned$/) do
  new_order = Order.new("drive".to_sym)
  @arc.asign_order(new_order)
end

Then(/^the arc accepts the order$/) do
  expect(@arc.has_order).to be true
end

Then(/^the arc drives$/) do
  pending # Write code here that turns the phrase above into concrete actions
end
