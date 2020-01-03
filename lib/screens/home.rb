
class HomeScreen < BaseScreen
    
    def get_template
        return "§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§\n"  +
         "§\t\t\t\t\t\t\t\t\t   §\n"+
         "§\t░██████╗░░█████╗░███╗░░░███╗░█████╗░░██████╗░███████╗██████╗░\t   §\n"+
         "§\t██╔════╝░██╔══██╗████╗░████║██╔══██╗██╔════╝░██╔════╝██╔══██╗\t   §\n"+
         "§\t██║░░██╗░███████║██╔████╔██║███████║██║░░██╗░█████╗░░██████╔╝\t   §\n"+
         "§\t██║░░╚██╗██╔══██║██║╚██╔╝██║██╔══██║██║░░╚██╗██╔══╝░░██╔══██╗\t   §\n"+
         "§\t╚██████╔╝██║░░██║██║░╚═╝░██║██║░░██║╚██████╔╝███████╗██║░░██║\t   §\n"+
         "§\t░╚═════╝░╚═╝░░╚═╝╚═╝░░░░░╚═╝╚═╝░░╚═╝░╚═════╝░╚══════╝╚═╝░░╚═╝\t   §\n"+
         "§\t\t\t\t\t\t\t\t\t   §\n"+
         "§\t\tThe best games to download, just for you!\t\t   §\n"+
         "§\t\t\t\t\t\t\t\t\t   §\n"+
         "§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§"
    end

    def get_menu
        return   [
            "New User",
            "Existing User",
            "Exit",
            "Admin"
        ]
    end

    def process_menu(choice)
        case choice
            when 1
                system "clear"
                puts Colors.primary(get_template) + spacer
                print "Your username: "
                username = gets.chomp
                print "Your password: "
                password = gets.chomp
                new_user = User.new_user(username, password)
                if new_user != false
                    @user = new_user
                    return "game menu"
                  else
                    puts "We're sorry, but the user: '#{username}' , already exists in our system."
                    print "Press any key to continute..."
                    gets.chomp
                    return "home"
                  end
            when 2
                system "clear"
                puts Colors.primary(get_template) + spacer
                print "Your username: "
                username = gets.chomp
                print "Your password: "
                password = gets.chomp
                existing_user = User.existing_user(username, password)
                if existing_user != nil
                    @user = existing_user
                    return "game menu"
                  else
                    BaseScreen.notify("We're sorry, Username / Password is incorrect, please try again or create a new user.") 
                    return "home"
                  end
            when 3
                return "exit"
            when 4
                puts "God Mode engaged"
                BaseScreen.suspend
                @user = User.existing_user("Test", "test123")
                return "game menu"
            
        end

    end
end