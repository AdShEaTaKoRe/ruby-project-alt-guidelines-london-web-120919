class HelperScreen < BaseScreen


    def self.add_to_library(user)
        puts "Select Game: \n\n " 
        print ">> "
        game_id = gets.chomp.to_i
        selected_game = Game.find_by(id: game_id)
        if selected_game == nil
            BaseScreen.notify("Game does not exist, please try again.")
            return false
        elsif UserGame.find_by(user_id: user.id, game_id: selected_game.id) != nil
            BaseScreen.notify("#{selected_game.title} is already in your library.")
            return false
        else 
            added_game = UserGame.new(user_id: user.id, game_id: selected_game.id)
            added_game.save
            BaseScreen.notify("Game has been added to library.")
            return true
        end


    end

end