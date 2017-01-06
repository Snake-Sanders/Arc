Then(/^the arc status is on$/) do
  @arc.sys_status == :on
end

Given(/^the arc status is off$/) do
  @arc.sys_status == :off
end

When(/^the arc is switched on$/) do
  @arc.turn_on
end

When(/^the arc is shitched off$/) do
  @arc.turn_off
end
