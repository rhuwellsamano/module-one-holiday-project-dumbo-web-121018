
Item.destroy_all
Destination.destroy_all
Rocketship.destroy_all
Pilot.destroy_all
Mission.destroy_all
Battle.destroy_all
Enemy.destroy_all
User.destroy_all

user1 = User.create(user_name: "EMERALD")
user2 = User.create(user_name: "RUBY")
user3 = User.create(user_name: "SAPPHIRE")

item1 = Item.create(item_name: "TOMATO SEEDS", status: "ACTIVE")
item2 = Item.create(item_name: "POTATOES", status: "ACTIVE")
item3 = Item.create(item_name: "APPLE SEEDS", status: "ACTIVE")
item4 = Item.create(item_name: "PUMPKIN SEEDS", status: "ACTIVE")
item5 = Item.create(item_name: "WATERMELON SEEDS", status: "ACTIVE")

destination1 = Destination.create(destination_name: "MOON")
destination2 = Destination.create(destination_name: "MARS")
destination3 = Destination.create(destination_name: "JUPITER")
destination4 = Destination.create(destination_name: "SATURN")
destination5 = Destination.create(destination_name: "ANDROMEDA STATION")

rocketship1 = Rocketship.create(rocketship_name: "THE RICKMOBILE", health: 100, status: "ACTIVE")
rocketship2 = Rocketship.create(rocketship_name: "ROCKET 17-A", health: 100, status: "ACTIVE")
rocketship3 = Rocketship.create(rocketship_name: "WINGED-BEAR X9", health: 100, status: "ACTIVE")
rocketship4 = Rocketship.create(rocketship_name: "FLYBOY ROCKET", health: 100, status: "ACTIVE")
rocketship5 = Rocketship.create(rocketship_name: "MILLENIUM FALCON", health: 100, status: "ACTIVE")


pilot1 = Pilot.create(pilot_name: "RICK SANCHEZ", status: "ACTIVE")
pilot2 = Pilot.create(pilot_name: "RHUWELL SAMANO", status: "ACTIVE")
pilot3 = Pilot.create(pilot_name: "JANEYWANEY", status: "ACTIVE")
pilot4 = Pilot.create(pilot_name: "SAM MARQUEZ", status: "ACTIVE")
pilot5 = Pilot.create(pilot_name: "KEVYWEVY", status: "ACTIVE")

enemy1 = Enemy.create(enemy_name: "ALIEN", health: 100, status: "ACTIVE")
enemy2 = Enemy.create(enemy_name: "PREDATOR", health: 100, status: "ACTIVE")
enemy3 = Enemy.create(enemy_name: "TERRAN", health: 100, status: "ACTIVE")
enemy4 = Enemy.create(enemy_name: "ZERG", health: 100, status: "ACTIVE")
enemy5 = Enemy.create(enemy_name: "PROTOSS", health: 100, status: "ACTIVE")
