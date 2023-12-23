# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
user = User.create(email: 'john@example.com', password: 'password')
User.create(email: 'jane@example.com', password: 'password')
# user.save!

# Create a Board associated with the user
board = user.boards.create(name: 'Example Board')
board.save!

# Create Lists associated with the board
list1 = board.lists.create(name: 'List 1')
list2 = board.lists.create(name: 'List 2')
list1.save!

# Create Cards associated with the lists
card1 = list1.cards.create(title: 'Card 1 Title', description: 'Description for Card 1')
card2 = list2.cards.create(title: 'Card 2 Title', description: 'Description for Card 2')