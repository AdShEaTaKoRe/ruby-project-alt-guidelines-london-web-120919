class GamagerApp
@@username = "Guest"
def home

  puts "§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§"  
  puts "§\t\t\t\t\t\t\t\t\t   §"
  puts "§\t░██████╗░░█████╗░███╗░░░███╗░█████╗░░██████╗░███████╗██████╗░\t   §"
  puts "§\t██╔════╝░██╔══██╗████╗░████║██╔══██╗██╔════╝░██╔════╝██╔══██╗\t   §"
  puts "§\t██║░░██╗░███████║██╔████╔██║███████║██║░░██╗░█████╗░░██████╔╝\t   §"
  puts "§\t██║░░╚██╗██╔══██║██║╚██╔╝██║██╔══██║██║░░╚██╗██╔══╝░░██╔══██╗\t   §"
  puts "§\t╚██████╔╝██║░░██║██║░╚═╝░██║██║░░██║╚██████╔╝███████╗██║░░██║\t   §"
  puts "§\t░╚═════╝░╚═╝░░╚═╝╚═╝░░░░░╚═╝╚═╝░░╚═╝░╚═════╝░╚══════╝╚═╝░░╚═╝\t   §"
  puts "§\t\t\t\t\t\t\t\t\t   §"
  puts "§\t\tThe best games to download, just for you!\t\t   §"
  puts "§\t\t\t\t\t\t\t\t\t   §"
  puts "§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§\n\n"  
  puts "Hello #{@@username}, Please select one of the following:\n\n"
  puts "1. New User"
  puts "2. Existing User"
  puts "3. Exit"
  puts "4. Admin\n\n"
  print "Your choice: "
  user_choice = gets.chomp.to_i
  while user_choice != 3
    case user_choice
      when 1 ##|| "yes" || "Yes"
        puts "Your email"
        email = gets.chomp
        puts "Your name"
        @@username = gets.chomp
        if User.new_user(@@username, email) != false
          logo
          puts "Hello #{@@username}, welcome to Gamager!"
          game_options
        else
          puts "We're sorry, but the user: '#{@@username}' , already exists in our system."
        end
        when 2
          puts "Your email"
          email = gets.chomp
          puts "Your name"
          @@username = gets.chomp
          if User.existing_user(@@username, email) != false
            puts "Welcome back, #{@@username}!"
          else
            puts "We're sorry, but the user: '#{@@username}' , doesnt exist in our system, please creat a new user."
          end
        when 3
        when 4
          puts "GOD MODE ENGAGED"
          puts "Hello GOD, what would you like to do?"
          game_options
        else 
          puts "Invalid input, please try again."
          user_choice = gets.chomp
      end
    end  
end




    def logo
      puts "§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§"  
      puts "§\t\t\t\t\t\t\t\t\t§"
      puts "§\t\t\t\tGamager\t\t\t\t\t§"
      puts "§\t\t\t\t\t\t\t\t\t§"
      puts "§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§"  
      # puts "WELCOME TO GAMAGER #{@@username} I HOPE THAT YOU ENJOY YOUR TIME IN OUR APP"

    end

  def game_options
    puts "So... what do you want to do now?"
    puts "1. See game list"
    puts "2. Search game"
    puts "3. Im not even supposed to be here today!\n\n"
    print "Your choice: "
    user_choice = gets.chomp.to_i
  while user_choice != 3
    case user_choice
      when 1
        #puts full_game_list
        if Game.new_user(@@username, email) != false
          logo
          puts "Hello #{@@username}, welcome to Gamager!"
          game_options
        else
          puts "We're sorry, but the user: '#{@@username}' , already exists in our system."
        end
        when 2
          ##puts search by title
          
          puts "Please enter the game title you wish to see: "
          game_name = gets.chomp
          if 
          else
            puts "We're sorry, but the user: '#{@@username}' , doesnt exist in our system, please creat a new user."
          end
        when 3
        else 
          puts "Invalid input, please try again."
          user_choice = gets.chomp
      end
    end  




  end

end