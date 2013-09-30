module GamesHelper
	def get_game_name(game_id)
		game = Game.find_by_id(game_id)
		if game
			ret_val = game.name
		else
			ret_val = ""
		end
		return ret_val	
	end
end
