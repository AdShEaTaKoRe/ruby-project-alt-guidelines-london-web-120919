class SearchGameScreen < BaseScreen
    def get_template
        return get_logo + spacer +
            "Search by: "
        

    end

    def get_menu
        return [
            "Title", 
            "Developer",
            "Go Back"
        ]
    end

    def process_menu(choice)
        case choice
            when 1
                print "Enter Title: " + spacer
                game_title = gets.chomp
                found_games = Game.where('title LIKE ?', "%#{game_title}%")
                if found_games.length == 0
                    BaseScreen.notify("Could not find games that match: #{game_title}, please try again.")
                    return "search"
                else 
                    puts "Found #{found_games.length} games:"
                    print spacer
                    puts Game.as_string_list(found_games).join("\n")
                    puts "1. Add to Library\n" +
                        "2. Back to Store"
                        selection = gets.chomp.to_i
                        while !validate_menu_input(selection, 2)
                            print "Invalid input, please try again: "
                            selection = gets.chomp.to_i
                        end
                        case selection
                            when 1
                                HelperScreen.add_to_library(@user)
                                return "search"
                            when 2
                                return "store menu"
                        end
                    end
                return "browse"
            when 2
                return "store menu"
            when 3
                return "store menu"
        end
    end






end