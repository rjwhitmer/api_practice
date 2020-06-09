# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Member.destroy_all
Band.destroy_all

motion_city_soundtrack = Band.create({
    name: "Motion City Soundtrack",
    genre: "alternative",
    year_established: 2000
})

hurricane_ditka = Band.create({
    name: "Hurricane Ditka",
    genre:  "indie",
    year_established: 2004
})

pierre = Member.create({
    name: "Pierre",
    instrument: "vocals",
    age: 45,
    band: motion_city_soundtrack

})
bob = Member.create({
    name: "Bob",
    instrument: "drums",
    age: 32,
    band: hurricane_ditka
})
shawn = Member.create({
    name: "Shawn",
    instrument: "bass",
    age: 32,
    band: hurricane_ditka
})
joshua = Member.create({
    name: "Joshua",
    instrument: "guitar",
    age: 45,
    band: motion_city_soundtrack
})
matthew = Member.create({
    name: "Matthew",
    instrument: "bass",
    age: 39,
    band: motion_city_soundtrack
})
j = Member.create({
    name: "J",
    instrument: "vocals",
    age: 32,
    band: hurricane_ditka
})
jesse = Member.create({
    name: "Jesse",
    instrument: "keyboard",
    age: 42,
    band: motion_city_soundtrack
})

# bob.band = hurricane_ditka