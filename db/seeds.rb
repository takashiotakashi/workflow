# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Cleaning database..."
WorkSpace.destroy_all
User.destroy_all

puts "Creating database..."
user1 = User.create(email: "testeee@gmail.com", password: 123123, first_name: "Antonio", last_name: "Nunes" )
user2 = User.create(email: "teste2@teste.com", password: 123123, first_name: "Joao", last_name: "Tore" )

paulista = WorkSpace.create(user: user1, name: "Paulista Work", price: 123, description: "Show", latitude: -23.111, longitude: -46.120)
madalena = WorkSpace.create(user: user2, name: "Madalena Work", price: 456, description: "Perfeito", latitude: 48.8649574 , longitude: 2.3800617)
lapa = WorkSpace.create(user: user1, name: "Lapa Work", price: 789, description: "Legal", latitude: 48.8649574 , longitude: 2.3800617)
sumare = WorkSpace.create(user: user2, name: "Sumare Work", price: 1111, description: "Estranho", latitude: 48.8649574 , longitude: 2.3800617)
morumbi = WorkSpace.create(user: user1, name: "Morumbi Work", price: 555, description: "Ok", latitude: 48.8649574 , longitude: 2.3800617)

reserva1 = Booking.create(user: user1, start_date: "25-08-2022", end_date: "27-09-2022", amount_due: 7897, work_space: paulista)
reserva2 = Booking.create(user: user2, start_date: "24-08-2022" , end_date: "27-09-2022", amount_due: 7897, work_space: madalena)
reserva3 = Booking.create(user: user1, start_date: "29-08-2022" , end_date: "27-09-2022", amount_due: 7897, work_space: lapa)
reserva4 = Booking.create(user: user2, start_date: "28-08-2022" , end_date: "27-09-2022", amount_due: 7897, work_space: sumare)
reserva5 = Booking.create(user: user1, start_date: "26-08-2022" , end_date: "27-09-2022", amount_due: 7897, work_space: morumbi)
