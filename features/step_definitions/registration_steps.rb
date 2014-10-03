Given(/^I am on the home page$/) do
  visit '/'
end

Then(/^I should see "(.*?)"$/) do |arg1|
	expect(page).to have_content arg1
end

When(/^I enter "(.*?)" into "(.*?)"$/) do |my_name, player_name|
  fill_in(player_name, with: my_name)
end

Then(/^I should be taken to the game page$/) do
  visit '/game'
end