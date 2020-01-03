class BaseScreen

    attr_reader :user

    def set_user(user)
        @user = user
    end

    def display
        system "clear"
        print Colors.primary(get_template)
        puts spacer
        mapped_menu = get_menu.each_with_index.map { |menu_item, index| "#{index+1}. #{menu_item}" }
        print Colors.secondary(mapped_menu.join("\n"))
        puts spacer
        print Colors.dark(">> ")
        
    
    end

    def get_template

    end

    def get_menu

    end

    def process_menu(choice)
        puts "you selected #{choice}"

    end

    def get_logo
        return "§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§\n"+  
         "§\t\t\t\t\t\t\t\t\t§\n"+
         "§\t\t\t\tGamager\t\t\t\t\t§\n"+
         "§\t\t\t\t\t\t\t\t\t§\n"+
         "§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§"  
    end

    def spacer
        return "\n\n"
    end

    def self.suspend
        print Colors.light("Press any key to continute...")
        gets.chomp
    end

    def self.notify(message)
        puts Colors.light(message)
        suspend
    end

    def validate_menu_input(user_input, menu_options)
        return user_input <= menu_options && user_input > 0
    end

    def interact(choice)
        latest_choice = choice
        while !validate_menu_input(latest_choice, get_menu.length)
            print Colors.light("Invalid input, please try again: ")
            latest_choice = gets.chomp.to_i
        end
        process_menu(latest_choice)

    end

end