class UserGame < ActiveRecord::Base
    belongs_to :user
    belongs_to :game

    def self.as_string_list(user_games)
        user_games.map {|user_game| 
            Colors.dark("(") + 
            Colors.light("#{user_game.id}") + 
            Colors.dark(")") + 
            Colors.light(" #{user_game.game.title}") + 
            Colors.dark(" - ") + 
            Colors.light("#{user_game.game.developer.name}") + 
            Colors.dark(" - ") +
            Colors.light("Rating: #{user_game.rating.to_s}")
            # Colors.light("(#{user_game.id}) #{user_game.game.title} - #{user_game.game.developer.name} - Rating: #{user_game.rating.to_s}")
        }
    end

end