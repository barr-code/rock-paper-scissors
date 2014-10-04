Feature: Registering to Play
	As a casual visitor to the site
	I want to be able to join a game

Scenario: Visiting the Page
	Given I am on the home page
	Then I should see "Welcome to Rock Paper Scissors!"

Scenario: Signing Up
	Given I am on the home page
	When I enter "Victoria" into "player_name"
	Then I should see "Welcome, Victoria! Let's play."
