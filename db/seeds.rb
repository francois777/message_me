# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Message.delete_all
User.delete_all

usernames = %w(Francois Stephanie Frederick Vanessa Olga Trudy)
messages = [
  "What a beautiful day",
  "I got a parking ticket!",
  "Everybody, come to my party tonight",
  "Let's all have KFC during lunch time!",
  "I am buying a new car tomorrow!",
  "My dog had six puppies yesterday!"
]

usernames.each_with_index do |name, inx|
  user = User.create(username: name, password: "password")
  Message.create(body: messages[inx], user_id: user.id)
end
