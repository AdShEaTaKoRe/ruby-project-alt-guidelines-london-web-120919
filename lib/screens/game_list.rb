class GameListScreen < BaseScreen
    def get_template
        return get_logo + spacer +
        Game.as_string_list(Game.all).join("\n")

    end

    def get_menu
        return [
            "Add to Library",
            "Go to Library", 
            "Back to Store"
        ]
    end

    def process_menu(choice)
        case choice
            when 1
                HelperScreen.add_to_library(@user)
                return "browse"
            when 2
                return "library menu"
            when 3
                return "store menu"
            
        end
    end






end