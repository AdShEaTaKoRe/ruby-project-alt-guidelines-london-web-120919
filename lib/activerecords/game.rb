class Game < ActiveRecord::Base
    has_many :usergames
    has_many :users, through: :usergames
    belongs_to :developer


    def self.game_titles
        list = Game.all
        first_name = list.find(1).title
        # first_name
        # puts "1. #{first_name}."
        # # list.select {|name| name.title}
        
    end
        
end