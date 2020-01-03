dev1 =  Developer.create(name: "GearBox Software")
dev2 = Developer.create(name: "BioWare")
dev3 = Developer.create(name: "Irrational Games")
dev4 = Developer.create(name: "Electronic Arts")
dev5 = Developer.create(name: "Activision")
dev6 = Developer.create(name: "Rockstar Games")




game1 = Game.create(title: "Borderlands 1", developer_id: dev1.id)
game2 = Game.create(title: "Borderlands 2", developer_id: dev1.id)
game3 = Game.create(title: "Borderlands 3", developer_id: dev1.id)
game4 = Game.create(title: "Mass Effect 3", developer_id: dev2.id)
game5 = Game.create(title: "Bioshock", developer_id: dev3.id)
game6 = Game.create(title: "Bioshock infinite", developer_id: dev3.id)
game7 = Game.create(title: "The Sims 4", developer_id: dev4.id)
game8 = Game.create(title: "Battlefield 5", developer_id: dev4.id)
game9 = Game.create(title: "Call of Duty: Black Ops II", developer_id: dev5.id)
game10 = Game.create(title: "X-Men Origins Wolverine", developer_id: dev5.id)
game11 = Game.create(title: "GTA V", developer_id: dev6.id)
game12 = Game.create(title: "Red Dead Redemption II", developer_id: dev6.id)

user1 = User.create(username: "TommyB", password: "tommyb87")
user2 = User.create(username: "Bobby6Killer" , password: "bobb6klr" )
user3 = User.create(username: "Cool-Boy", password: "coolness89" )
user4 = User.create(username: "Kill3r", password: "Kill3rsss" )
user5 = User.create(username: "BabyGirl", password: "babyg92" )
user6 = User.create(username: "PandaB", password: "pandababa" )
user7 = User.create(username: "DavidS", password: "davisi82")
user8 = User.create(username: "Test", password: "test123")


ug1 = UserGame.create(game_id: game3.id, user_id: user1.id)
ug2 = UserGame.create(game_id: game12.id, user_id: user1.id)
ug3 = UserGame.create(game_id: game6.id, user_id: user2.id)
ug3 = UserGame.create(game: game7, user: user2)