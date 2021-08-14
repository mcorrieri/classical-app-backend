# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all

puts "Creating Users"
Duey = User.create(name: 'Duey', username: 'DaDTP', email: 'Duey@TP.coolkid.com', password: '123', bio: "Hotdogs are my favorite")
Mike = User.create(name: 'Mike', username: 'MBoi68', email: 'Mike@DTP.googles', password: '123', bio: "I ate pizza tonight")
Tammy = User.create(name: 'Tammy', username: 'Tlady', email: 'DueyLover@coolkid.com', password: '123', bio: "I wish i was like mike")

puts "Done!!!"