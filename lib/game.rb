class Game < ActiveRecord::Base
    has_many :usergames
    has_many :users, through: :usergames
    belongs_to :developer
end