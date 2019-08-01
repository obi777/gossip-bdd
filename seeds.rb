# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
  10.times do
  user = User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, description: Faker::GameOfThrones.quote, email: Faker::Internet.email, age: rand(15..99), city_id: rand(1..10))
end

10.times do
  city = City.create(name: Faker::Address.city, postal_code: Faker::Address.postcode)
end

10.times do
  gossip = Gossip.create(user_id: rand(1..20) , title: Faker::Friends.character, content: Faker::Friends.quote)
end

 10.times do
  tag = Tag.create(tag: Faker::NewGirl.character)
end

10.times do
  comment = Comment.create(content: Faker::HarryPotter.quote, user_id: rand(1..10), gossip_id: rand(1..10))
end

10.times do
  like = Like.create(user_id: rand(1..10), comment_id: rand(1..10))
  like = Like.create(user_id: rand(1..10), gossip_id: rand(1..10))
end

#10.times do
#private_message = PrivateMessage.create(content: Faker::Friends.quote, recipient_id: rand(1..10), sender_id: rand(1..10))
#end

#10.times do
#comments_to_comments = CommentsToComments.create(content: Faker::Friends.quote, comment_id: rand(1..10))
#end
