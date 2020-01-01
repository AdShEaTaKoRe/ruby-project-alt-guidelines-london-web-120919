class UserGame < ActiveRecord::Base
    belongs_to :user
    belongs_to :game

    def self.as_string_list(user_games)
        user_games.map {|user_game| "(#{user_game.id}) #{user_game.game.title} - #{user_game.game.developer.name}"}
    end

end