class GameMenuScreen < BaseScreen
    def get_template
        return get_logo
    end

    def get_menu
        return [
            "Go to Store",
            "Your Library",
            "Log-Out"
        ]

    end

    def process_menu(choice)
        case choice
            when 1
                return "store menu"
            when 2
                return "library menu"
            when 3
                return "home"
            
        end
    end
end