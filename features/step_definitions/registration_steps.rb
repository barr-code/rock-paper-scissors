Given(/^I am on the home page$/) do
  visit '/'
end

When(/^I enter "(.*?)" into "(.*?)"$/) do |my_name, player_name|
  fill_in(player_name, with: my_name)
end

Then(/^I should see "(.*?)"$/) do |play|
  expect(page).to have_content play 
end