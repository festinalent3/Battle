class Game
	attr_reader :player_1, :player_2, :current_player, :opponent

	def initialize player_1, player_2
		@player_1 = player_1
		@player_2 = player_2
		@current_player = player_1
		@opponent = player_2
	end

	def attack opponent
		opponent.receive_damage
	end

	def switch_turn
		@current_player = @opponent
		@opponent = player_1 if @current_player == player_2
		@opponent = player_2 if @current_player == player_1
	end

end
