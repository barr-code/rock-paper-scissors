Feature: Registering to Play
	As a casual visitor to the site
	I want to be able to join a game

Scenario: Visiting the Page
	Given I am on the home page
	Then I should see "Welcome to Rock Paper Scissors!"

Scenario: Signing Up
	Given I am on the home page
	When I enter "Victoria" into "player_name"
	And click "Sign up!"
	Then I should see "Welcome, Victoria! Let the game begin."

Scenario: Starting the game
	Given I have signed up
	When I click "Start Game"
	Then I should see "Let's play, Victoria."
	And I should see "Choose your weapon."
