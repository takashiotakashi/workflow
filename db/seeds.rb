# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

WorkSpace.new(name: 'Le Wagon', description: 'Free coffee and crackers, all day.', price: 100)
WorkSpace.new(name: 'Le Saigon', description: 'We provide our guests with one chair you can take turns for.', price: 240)
WorkSpace.new(name: 'Aruba Trade Center', description: 'One desk per user, free wifi.', price: 75)
WorkSpace.new(name: 'Center Center', description: 'Free coffee, free wifi.', price: 175)
