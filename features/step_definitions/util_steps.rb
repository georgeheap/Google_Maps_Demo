Given(/^I am logged on as "([^"]*)"$/) do |email|
  @user = log_on_as(email)
end

When(/^I visit the "([^"]*)" page$/) do |path|
  visit get_named_route(path)
end
