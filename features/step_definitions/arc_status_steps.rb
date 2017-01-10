Given(/^the arc status is "([^"]*)"$/) do |power_state|
  switch_power(power_state)
  power_state_is(power_state)
end

When(/^the arc is switched "([^"]*)"$/) do |power_state|
  switch_power(power_state)
end

Then(/^the conf is "([^"]*)"$/) do |load_state|
  expect(load_state).to eq(@arc.sys_status[:conf].to_s)
end
