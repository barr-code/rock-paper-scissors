class Game

	attr_accessor :player1, :computer

	def initialize
		@player1 = nil
		@computer
	end

	WINS = {rock: :scissors, scissors: :paper, paper: :rock}

	def has_players?
		@player1
	end

	def random_choice!
		@computer = %w(:rock :paper :scissors).sample
	end

	def result
		random_choice!
		return 'Draw!' if player1.weapon == @computer
		WINS[player1.weapon] == computer ? "#{player1.weapon.to_s} beats #{@computer}. #{player1.name} wins!" : "#{@computer.to_s} beats #{player1.weapon}. Computer wins!"
	end

end