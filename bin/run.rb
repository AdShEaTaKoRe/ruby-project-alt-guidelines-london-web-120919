require_relative '../config/environment'

next_screen = "home"
logged_user = nil
screens = {
    "home" => HomeScreen.new ,
    "game menu" => GameMenuScreen.new,
    "store menu" => StoreMenuScreen.new,
    "library menu" => LibraryMenuScreen.new,
    "browse" => GameListScreen.new,
    "search" => SearchGameScreen.new
}


while next_screen != "exit" do
    current_screen = screens[next_screen]
    current_screen.set_user(logged_user)
    current_screen.display
   next_screen = current_screen.interact(gets.chomp.to_i)
   logged_user = current_screen.user

end

