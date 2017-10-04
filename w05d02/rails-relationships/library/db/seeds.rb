# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

luke = Author.create({name: 'Luke', net_worth: 20, dob: '14/05/1992'})
abass = Author.create({name: 'Abass', net_worth: 15, dob: '9/2/1994'})

book1 = Book.create(title: 'Lol', blurb: 'book of lol', genre: 'action')
book2 = Book.create(title: 'Yolo', blurb: 'book of Yolo', genre: 'romance')
book3 = Book.create(title: 'Swag', blurb: 'book of Swag', genre: 'romance')
book4 = Book.create(title: 'Peng', blurb: 'book of Peng', genre: 'romance')
book5 = Book.create(title: 'Deng', blurb: 'book of Deng', genre: 'romance')

luke.books << book1
luke.books << book2
luke.books << book5

luke.save

abass.books << book3
abass.books << book4

abass.save
