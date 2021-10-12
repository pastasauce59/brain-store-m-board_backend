# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
User.reset_pk_sequence

Idea.destroy_all
Idea.reset_pk_sequence

User.create(username: "MikesGotIdeas", password: "abcd")
User.create(username: "Alfonso3000", password: "1234")
User.create(username: "BRaNiac", password: "braingame")
User.create(username: "GamerGirl", password: "gamegame")
User.create(username: "JohnDoe", password: "doejohn")
User.create(username: "LuigiNOTmario", password: "nint")
User.create(username: "Electrik", password: "tesla")

Idea.create(title: "Create A Robot", desc: "That can cook breakfast for me ;)", private: true, user_id: 1)
Idea.create(title: "Produce Exchange App", desc: "For farms/restaurants to use to find local produce", private: false, user_id: 1)
Idea.create(title: "Drawing App", desc: "Where someone has to guess what was drawn by the user", private: true, user_id: 1)
Idea.create(title: "An app", desc: "That can code itself ;)", private: true, user_id: 1)
Idea.create(title: "Sidescroller Game Like Mario app", desc: "Using Kaboom.js", private: true, user_id: 1)

Idea.create(title: "Flying Cars", desc: "Does this really need an explanation?...", private: false, user_id: 2)
Idea.create(title: "DIY skateboard", desc: "A kit to build a skateboard from scratch, logwood included!", private: false, user_id: 2)
Idea.create(title: "Hover Skateboard", desc: "Kind of like the flying cars idea...", private: false, user_id: 2)
Idea.create(title: "Mouse Controller", desc: "For pc gaming -> a mouse that can transform into a game controller", private: false, user_id: 3)
Idea.create(title: "Changing Toothbrush", desc: "Bristles eventually change color so you know when to toss it", private: false, user_id: 2)

Idea.create(title: "Calorie counter app", desc: "Automatically calculates calories by the food you submit", private: false, user_id: 6)
Idea.create(title: "1 Camera Lens 4 All", desc: " An all in one lens for professional photographers", private: false, user_id: 2)
Idea.create(title: "Spam Email Deleter", desc: "An app that autodeletes spam emails for you", private: false, user_id: 3)
Idea.create(title: "Public toilet rater", desc: "An app telling you where the cleanest public bathrooms are in your local area", private: false, user_id: 3)
Idea.create(title: "Daily walks", desc: "An app that creates a round trip walking route based on the desired number of steps you'd like to walk that day", private: false, user_id: 2)
Idea.create(title: "Playstation 5 Maker", desc: "because nobody can seem to get one so build your own instead!", private: false, user_id: 4)
Idea.create(title: "Top Urgent Care", desc: "An app that locates the best urgent care locally", private: false, user_id: 4)
Idea.create(title: "Beach in Peace", desc: "An app listing the least crowded beaches in town", private: true, user_id: 1)
Idea.create(title: "Senior Discounts", desc: "An app that tells senior citizens which stores in their area offer discounts and on what day", private: false, user_id: 5)
Idea.create(title: "General idea generator", desc: "An app that can generate general ideas for a general guy like me", private: false, user_id: 5)
Idea.create(title: "Charging Station Locator", desc: "An app that tells where all the electric car charging stations are in the country", private: false, user_id: 7)

puts "Done Seeding..."