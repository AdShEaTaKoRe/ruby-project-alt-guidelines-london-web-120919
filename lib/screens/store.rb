class StoreMenuScreen < BaseScreen
    def get_template
        return get_logo + spacer +
            "Welcome #{@user.username} to Gamager Store!"
    end

    def get_menu
        return [
            "See game list",
            "Search game",
            "Go Back"
        ]

    end

    def process_menu(choice)
        case choice
            when 1
                return "browse"
            when 2
                return "search"
            when 3
                return "game menu"
            
        end
    end
end