require 'game'
require 'player'

describe Game do

	let(:game) {Game.new}
	let(:player_1) {Player.new('Victoria')}
	let(:player_2) {Player.new('Elizabeth')}

	it "adds players" do
		game.player1 = player_1
		expect(game).to have_players
	end

	it "knows when it has a player" do
		expect(game).not_to have_players
	end

	it "knows when it has 2 players" do
		game.player1 = player_1
		game.player2 = player_2
		expect(game).to have_two_players
	end

	it "knows which weapons win in a fight" do
		player_1.weapon = :rock
		player_2.weapon = :paper
		game.player1 = player_1
		game.player2 = player_2
		expect(game.result).to eq('Elizabeth wins!')
	end

end