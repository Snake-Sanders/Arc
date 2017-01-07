#STR_MASK = Transform (([^"]*)"$/)) do |string|
#  string.trim
#end

Given(/^the arc status is "([^"]*)"$/) do |power_state|
  expect(power_state).to eq(@arc.sys_status[:power])
end

When(/^the arc is switched "([^"]*)"$/) do |power_state|
  if power_state == "on"
    @arc.turn_on
  else
    @arc.turn_off
  end
end

Then(/^the conf is "([^"]*)"$/) do |load_state|
  expect(load_state).to eq(@arc.sys_status[:conf])
end
