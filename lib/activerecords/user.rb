class User < ActiveRecord::Base
    has_many :usergames
    has_many :games, through: :usergames
    
    def self.new_user(username, password)
        found_user = User.find_by(username: username, password: password)
        if found_user == nil
            user = User.new(username: username, password: password)
            user.save
            return user
        else
            return false
        end
    end

    def self.existing_user(username, password)
        return User.find_by(username: username, password: password)
    end    
    
end