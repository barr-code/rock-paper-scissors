Given(/^I have signed in$/) do
  visit '/game'
end

Then(/^I see "(.*?)"$/) do |arg1|
  expect(page).to have_content arg1
end