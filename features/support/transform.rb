# @todo

INT_ASK = Transform /^\$(\d+)$/ do |digits|
  digits.to_i
end

STR_MASK = Transform /[^"]*"$/ do |string|
  string.trim
end

#When(/^the arc is switched "([^"]*)"$/) do |power_state|
