Feature: Registering to Play

Scenario: Visiting the Page
	Given I am on the home page
	Then I should see "Welcome to Rock Paper Scissor"

Scenario: Signing Up
	Given I am on the home page
	When I enter "Victoria" into "player_name"
	Then I should be taken to the game page
