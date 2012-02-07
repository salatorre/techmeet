Given /^I am on the homepage$/ do
  visit '/' # express the regexp above with the code you wish you had
end

When /^I follow "([^"]*)"$/ do |arg1|
  click_link "#{arg1}" # express the regexp above with the code you wish you had
end

When /^I fill in "([^"]*)" with "([^"]*)"$/ do |arg1, arg2|
  fill_in "#{arg1}", :with => "#{arg2}" # express the regexp above with the code you wish you had
end

When /^I press "([^"]*)"$/ do |arg1|
  click_button "#{arg1}" # express the regexp above with the code you wish you had
end

Then /^I should see "([^"]*)"$/ do |arg1|
  page.should have_content arg1 # express the regexp above with the code you wish you had
end
