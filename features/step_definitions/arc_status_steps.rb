Given(/^the arc is off$/) do
  @arc.sys_status == :off
end

When(/^the arc is switched on$/) do
  @arc.turn_on
end

Then(/^the arc is on$/) do
  @arc.sys_status == :on
end
