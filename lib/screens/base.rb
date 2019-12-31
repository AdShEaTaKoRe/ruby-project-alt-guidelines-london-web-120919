class BaseScreen

    attr_reader :user

    def set_user(user)
        @user = user
    end

    def display
        system "clear"
        puts get_template
        puts "\n"
        puts get_menu
        puts "\n"
        print ">> "
        
    
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

end