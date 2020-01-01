class LibraryMenuScreen < BaseScreen
    def get_template
        template = get_logo + spacer + "Welcome #{@user.username} to Your Library!" + spacer
        user_games = UserGame.where(user_id: @user.id)
        if user_games != nil
            template += UserGame.as_string_list(user_games).join("\n")
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
                return "rate menu"
            when 2
                return "delete menu"
            when 3
                return "game menu"
            
        end
    end
end