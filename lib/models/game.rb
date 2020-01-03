class Game < ActiveRecord::Base
    has_many :user_games
    has_many :users, through: :user_games
    belongs_to :developer

    def self.as_string_list(games)
        games.map {|game| 
            user_games = UserGame.where(game_id: game.id)
            if user_games.length != 0
                average_rating = user_games.reduce(0) {|sum, user_game| sum + user_game.rating } / user_games.length
                average_rating = Colors.dark(" - ") + "Avg. Rating: " + average_rating.to_s
            end
            Colors.dark("(") + 
            Colors.light("#{game.id}") + 
            Colors.dark(")") + 
            Colors.light(" #{game.title}") + 
            Colors.dark(" - ") + 
            Colors.light("#{game.developer.name}") + 
            "#{average_rating}"
        }
    end
        
end
