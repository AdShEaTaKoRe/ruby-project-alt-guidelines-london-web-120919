class NewUserScreen < BaseScreen
    def get_template
        return get_logo

    end

    def get_menu
        return "Your username: "

    end

    def process_menu(choice)
        username = choice
        puts "Your password: "
        password = gets.chomp
        if User.new_user(username, password) != false
          else
            puts "We're sorry, but the user: '#{username}' , already exists in our system."
          end

    end
end