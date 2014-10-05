class Game

	attr_accessor :player1, :player2

	def initialize
		@player1 = nil
		@player2 = nil
	end

	WINS = {rock: :scissors, scissors: :paper, paper: :rock}

	def has_players?
		@player1 || @player2
	end

	def has_two_players?
		@player1 && @player2
	end

	def result
		return 'Draw!' if player1.weapon == player2.weapon
		WINS[player1.weapon] == player2.weapon ? "#{player1.name} wins!" : "#{player2.name} wins!"
	end

end