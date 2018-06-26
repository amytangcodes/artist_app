# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

artist_list = [
  'Adele',
  'Father John Misty',
  'Benny Benassi',
  'Ratatat',
  'Red Hot Chili Peppers',
  'Cat Powers'
]

artist_list.each do |name|
  Artist.create(artist_name: name)
end

 
 
