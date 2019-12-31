require_relative '../config/environment'

next_screen = "home"
logged_user = nil
screens = {
    "home" => HomeScreen.new ,
    "new user" => NewUserScreen.new 
}


while next_screen != "exit" do
    current_screen = screens[next_screen]
    current_screen.set_user(logged_user)
    current_screen.display
   next_screen = current_screen.process_menu(gets.chomp)
   logged_user = current_screen.user

end

