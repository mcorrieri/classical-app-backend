# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Composer.destroy_all
Favorite.destroy_all

puts "Creating Users"
Duey = User.create(name: 'Duey', username: 'DaDTP', email: 'Duey@TP.coolkid.com', password: '123', bio: "Hotdogs are my favorite")
Mike = User.create(name: 'Mike', username: 'MBoi68', email: 'Mike@DTP.googles', password: '123', bio: "I ate pizza tonight")
Tammy = User.create(name: 'Tammy', username: 'Tlady', email: 'DueyLover@coolkid.com', password: '123', bio: "I wish i was like mike")

puts "Creating Composers"
Bach = Composer.create(name: "Bach", full_name: "Johann Sebastian Bach", born: 1685, died: 1750, genre: "Baroque", bio: "He is known for instrumental compositions such as the Cello Suites and Brandenburg Concertos; keyboard works such as the Goldberg Variations, The Well-Tempered Clavier and the Toccata and Fugue in D minor; and vocal music such as the St Matthew Passion and the Mass in B minor. Since the 19th-century Bach Revival, he has been generally regarded as one of the greatest composers in the history of Western music." )

puts "Creating Favorites"
f1 = Favorite.create(user_id: Duey.id, composer_id: Bach.id)

puts "Done!!!"