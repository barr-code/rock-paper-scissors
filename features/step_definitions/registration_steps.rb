Given(/^I am on the home page$/) do
  visit '/'
end

When(/^I enter "(.*?)" into "(.*?)"$/) do |my_name, player_name|
  fill_in(player_name, with: my_name)
end

When(/^click "(.*?)"$/) do |button|
  click_on(button)
end

Then(/^I should see "(.*?)"$/) do |play|
  expect(page).to have_content play 
end

Given(/^I have signed up$/) do
  visit '/'
  fill_in("player_name", with: "Victoria")
  click_on("Sign up!")
end

When(/^I click "(.*?)"$/) do |submit|
  click_on(submit)
end

Then(/^I see "(.*?)"$/) do |message|
	expect(page).to have_content(message)
end

Then(/^I should see "(.*?)"$/) do |choose|
	expect(page).to have_content(choose)
end