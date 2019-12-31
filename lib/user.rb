class User < ActiveRecord::Base
    has_many :usergames
    has_many :games, through: :usergames
    
    def self.new_user(username, email)
        user_name = find_by(username: username)
        one_email = find_by(email: email)
        if user_name == nil && one_email == nil
            user = User.new(username: username, email: email)
            user.save
        else
            return false
        end
    end

    def self.existing_user(username, email)
        user = User.find_by(username: username)
        email = User.find_by(email: email)
        if username && email
        else
            return false
        
        puts "\n"
        # new_user
        end
    end    
    
end