class Game < ActiveRecord::Base
    has_many :usergames
    has_many :users, through: :usergames
    belongs_to :developer

    def self.as_string_list(games)
        games.map {|game| "(#{game.id}) #{game.title} - #{game.developer.name}"}
    end
        
end