Given(/^I am on the home page$/) do
  visit '/'
end

Then(/^I should see "(.*?)"$/) do |text|
  expect(page).to have_content(text)
end

When(/^I enter "(.*?)" into "(.*?)"$/) do |my_name, player_name|
   visit '/'
    fill_in(player_name, :with => my_name)
end

When(/^click "(.*?)"$/) do |button|
  click_on(button)
end

Given(/^I have signed up$/) do
  visit '/'
  fill_in("player_name", :with => "Victoria")
  click_on("Sign up!")
end

When(/^I click "(.*?)"$/) do |button|
  click_on(button)
end

