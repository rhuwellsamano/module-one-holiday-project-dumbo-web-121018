
# Item.destroy_all
# Destination.destroy_all
# Rocketship.destroy_all
# Pilot.destroy_all
# Mission.destroy_all
#
#
# item = Item.create(item_name: "Tomato Seeds", quantity: 10)
# destination = Destination.create(destination_name: "Moon")
# rocketship = Rocketship.create(rocket_name: "THE RICKMOBILE")
# pilot = Pilot.create(pilot_name: "Rick Sanchez")
#
# Mission.create(mission_name: "STARCHILD", user_id: 1, item_id: item.id, destination_id: destination.id, rocketship_id: rocketship.id, pilot_id: pilot.id) ### <== REMOVE MISSION ID FROM SCHEMA VIA MIGRATION CHANGE(DONE
#
# #
# # t.string  "mission_name"
# # t.integer "user_id"
# # t.integer "item_id"
# # t.integer "destination_id"
# # t.integer "rocketship_id"
# # t.integer "pilot_id"
# # t.integer "mission_id"
