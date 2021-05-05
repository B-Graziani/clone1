# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "cleaning DB"
Flat.destroy_all
puts "creating DB"
flat1 = { title: "title 1", address: "address1", description: "description1description1description1description1", stars: "1"}
flat2 = { title: "title 2", address: "address2", description: "description2description2description2description2", stars: "2"}
flat3 = { title: "title 3", address: "address3", description: "description3description3description3description3", stars: "3"}
flat4 = { title: "title 4", address: "address4", description: "description4description4description4description4", stars: "4"}
flat5 = { title: "title 5", address: "address5", description: "description5description5description5description5", stars: "5"}
Flats = []
[flat1, flat2, flat3, flat4, flat5].each_with_index do |attributes, index|
flat = Flat.create!(attributes)
Flats << flat
end

