class User < ActiveRecord::Base
    has_many :user_games
    has_many :games, through: :user_games
    
    def self.new_user(username, password)
        found_user = User.find_by(username: username, password: password)
        if found_user == nil
            user = User.new(username: username, password: password)
            user.save
            return user
        else
            return false
        end
    end

    def self.existing_user(username, password)
        return User.find_by(username: username, password: password)
    end    
    

    def my_games_as_string_list
        self.user_game.map {|user_game| 
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