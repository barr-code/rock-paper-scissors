require 'game'
require 'player'

describe Game do

	let(:game) {Game.new}
	let(:player_1) {Player.new('Victoria')}

	it "adds players" do
		game.player1 = player_1
		expect(game).to have_players
	end

	it "knows when it has a player" do
		expect(game).not_to have_players
	end

end