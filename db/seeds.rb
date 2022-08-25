# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "open-uri"

puts "Cleaning database..."
WorkSpace.destroy_all
User.destroy_all

puts "Creating database..."
user1 = User.create(email: "testeee@gmail.com", password: 123123, first_name: "Antonio", last_name: "Nunes")
user2 = User.create(email: "teste2@teste.com", password: 123123, first_name: "Joao", last_name: "Tore")

paulista = WorkSpace.create(user: user1, name: "Paulista Work", price: 123, description: "Show", address: "Av. Paulista, 2073, Sao Paulo")
file = URI.open("http://res.cloudinary.com/dkearav60/image/upload/c_scale,w_1443/v1661374977/office_2.jpg")
paulista.photo.attach(io: file, filename: "01.png", content_type: "image/png")
# paulista.save

madalena = WorkSpace.create(user: user2, name: "Madalena Work", price: 456, description: "Espaço perfeito, bom.", address: "Rua Aspicuelta, 4444, Sao Paulo")
file = URI.open("https://res.cloudinary.com/dkearav60/image/upload/c_scale,w_1081/v1661374974/office_3.jpg")
madalena.photo.attach(io: file, filename: "01.png", content_type: "image/png")
# madalena.save

lapa = WorkSpace.create(user: user1, name: "Lapa Work", price: 789, description: "Legal", address: "R. Faustolo, 1633, Sao Paulo")
file = URI.open("http://res.cloudinary.com/dkearav60/image/upload/c_scale,w_869/v1661374972/office_4.jpg")
lapa.photo.attach(io: file, filename: "01.png", content_type: "image/png")
# lapa.save

sumare = WorkSpace.create(user: user2, name: "Sumare Work", price: 1111, description: "Estranho", address: "Av. Purpurina, 89, Sao Paulo")
file = URI.open("https://res.cloudinary.com/dkearav60/image/upload/c_scale,h_1256/v1661374971/office_7.jpg")
sumare.photo.attach(io: file, filename: "01.png", content_type: "image/png")
# sumare.save

morumbi = WorkSpace.create(user: user1, name: "Morumbi Work", price: 555, description: "Ok", address: "Av. Morumbi, 501, Sao Paulo")
file = URI.open("http://res.cloudinary.com/dkearav60/image/upload/c_scale,w_2336/v1661374979/office_1.jpg")
morumbi.photo.attach(io: file, filename: "01.png", content_type: "image/png")
# morumbi.save

reserva1 = Booking.create(user: user1, start_date: "25-08-2022", end_date: "27-09-2022", amount_due: 7897, work_space: paulista)
reserva2 = Booking.create(user: user2, start_date: "24-08-2022" , end_date: "27-09-2022", amount_due: 7897, work_space: madalena)
reserva3 = Booking.create(user: user1, start_date: "29-08-2022" , end_date: "27-09-2022", amount_due: 7897, work_space: lapa)
reserva4 = Booking.create(user: user2, start_date: "28-08-2022" , end_date: "27-09-2022", amount_due: 7897, work_space: sumare)
reserva5 = Booking.create(user: user1, start_date: "26-08-2022" , end_date: "27-09-2022", amount_due: 7897, work_space: morumbi)

# file = URI.open("https://upload.wikimedia.org/wikipedia/commons/thumb/8/82/NES-Console-Set.jpg/1200px-NES-Console-Set.jpg")
# article = Article.new(title: "NES", body: "A great console")
# article.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
# article.save
