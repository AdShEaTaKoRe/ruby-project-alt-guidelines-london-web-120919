class GameMenuScreen < BaseScreen
    def get_template
        return get_logo
    end

    def get_menu
        return "So... what do you want to do now?\n"+
     "1. See game list\n"+
     "2. Search game\n"+
     "3. Im not even supposed to be here today!"

    end

    def process_menu(choice)

    end

end