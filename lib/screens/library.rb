class LibraryMenuScreen < BaseScreen
    def get_template
        template = get_logo + spacer + "Welcome #{@user.username} to Your Library!" + spacer
        # user_games = User.where(id: @user.id)
        if @user.usergames.length != 0
            template += @user.my_games_as_string_list.join("\n")
        else
            template += "Your Library is currenty empty."
        end
        return template
    end

    def get_menu
        return [
            "Rate a game",
            "Delete a game",
            "Go Back"
        ]
    end

    def process_menu(choice)
        case choice
            when 1
                puts "Choose a game to rate"
                game_id_to_rate = gets.chomp.to_i
                chosen_game = UserGame.find_by(user_id: @user.id, id: game_id_to_rate)
                if chosen_game != nil
                    print "Are you sure you want to rate #{chosen_game.game.title} (Y/n)?"
                    user_answer = gets.chomp.downcase
                    case user_answer
                        when "y"
                                print "#{chosen_game.game.title} is currently rated #{chosen_game.rating.to_s}" + spacer +
                                "Please rate the game (1..5):"
                                user_rate = gets.chomp.to_i
                                if user_rate > 0 && user_rate < 6
                                chosen_game.update(rating: user_rate)
                                BaseScreen.notify("You've rated #{user_rate} Thank you!")
                                else 
                                    BaseScreen.notify("Invalid input.")
                                end
                        when "n"
                            BaseScreen.suspend
                        else
                            BaseScreen.notify("Invalid input.")
                    end
                else
                    BaseScreen.notify("Invalid input.")
                end
                return "library menu"
            when 2
                puts "Choose a game to delete: "
                game_id_to_delete = gets.chomp.to_i
                chosen_game = UserGame.find_by(user_id: @user.id, id: game_id_to_delete)
                if chosen_game != nil
                    print "Are you sure you want to delete #{chosen_game.game.title} (Y/n)?"
                    user_answer = gets.chomp.downcase
                    case user_answer
                        when "y"
                            UserGame.delete(chosen_game)
                            BaseScreen.notify("Game has been deleted.")
                        when "n"
                            BaseScreen.suspend
                        else
                            BaseScreen.notify("Invalid input.")
                    end
                else
                        BaseScreen.notify("Invalid input.")
                end
                return "library menu"
            when 3
                return "game menu"
            
        end
    end
end