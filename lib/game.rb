class Game

	attr_accessor :player, :computer

	def initialize
		@player = nil
		@computer = nil
	end

	WINNER = {"rock" => "scissors", "scissors" => "paper", "paper" => "rock"}

	def has_players?
		@player
	end

	def random_choice!
		@computer = ["rock", "paper", "scissors"].sample
	end

	def result
		self.random_choice!
		
		if @player.weapon == @computer
			return 'Draw!'
		elsif WINNER[@player.weapon] == @computer
			return @player.name
		else
			return 'Computer'
		end
	end

end