#STR_MASK = Transform (([^"]*)"$/)) do |string|
#  string.trim
#end

Given(/^the arc status is "([^"]*)"$/) do |power_state|
  @arc.sys_status[:power] == power_state
end

When(/^the arc is switched "([^"]*)"$/) do |power_state|
  if power_state == "on"
    @arc.turn_on
  else
    @arc.turn_off
  end
end

Then(/^the conf is "([^"]*)"$/) do |load_state|
  @arc.sys_status[:conf] == load_state
end
