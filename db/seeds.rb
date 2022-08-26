# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "open-uri"

puts "Cleaning database..."
Booking.destroy_all
WorkSpace.destroy_all
User.destroy_all

puts "Creating database..."

ronaldo = User.create(email: "ronaldo@gmail.com", password: 'wewewe', first_name: "Ronaldo", last_name: "Fenomeno")
file = URI.open("https://res.cloudinary.com/dkearav60/image/upload/v1661457919/avatars/103535954_fpo1gw.jpg")
ronaldo.avatar.attach(io: file, filename: "av4.jpg", content_type: "image/jpg")

wagner = User.create(email: "wagner@gmail.com", password: 'wewewe', first_name: "Wagner", last_name: "Moura")
file = URI.open("https://res.cloudinary.com/dkearav60/image/upload/v1661457919/avatars/106714053_kznag1.jpg")
wagner.avatar.attach(io: file, filename: "av3.jpg", content_type: "image/jpg")

marcio = User.create(email: "marciopinho@gmail.com", password: 'wewewe', first_name: "Marcio", last_name: "Campi")
file = URI.open("https://res.cloudinary.com/dkearav60/image/upload/v1661457919/avatars/2648044_y0nvxo.jpg")
marcio.avatar.attach(io: file, filename: "av2.jpg", content_type: "image/jpg")

carlos = User.create(email: "carlos@gmail.com", password: 'wewewe', first_name: "Carlos", last_name: "Chaplin")
file = URI.open("https://res.cloudinary.com/dkearav60/image/upload/v1661457919/avatars/104123000_jp7xw1.jpg")
carlos.avatar.attach(io: file, filename: "av1.jpg", content_type: "image/jpg")


paulista = WorkSpace.create(user: carlos, name: "Paulista Work", price: 123, description: "Qualified team to cater for all your needs.", address: "Rua Mourato Coelho, 763, São Paulo")
file = URI.open("http://res.cloudinary.com/dkearav60/image/upload/c_scale,w_1443/v1661374977/office_2.jpg")
paulista.photos.attach(io: file, filename: "01.png", content_type: "image/jpg")

madalena = WorkSpace.create(user: wagner, name: "Madalena Work", price: 456, description: "Espaço perfeito, bom.", address: "Rua Aspicuelta, 4444, Sao Paulo")
file = URI.open("https://res.cloudinary.com/dkearav60/image/upload/c_scale,w_1081/v1661374974/office_3.jpg")
madalena.photos.attach(io: file, filename: "02.png", content_type: "image/jpg")

lapa = WorkSpace.create(user: wagner, name: "Lapa Work", price: 789, description: "Legal", address: "R. Faustolo, 1633, Sao Paulo")
file = URI.open("http://res.cloudinary.com/dkearav60/image/upload/c_scale,w_869/v1661374972/office_4.jpg")
lapa.photos.attach(io: file, filename: "03.png", content_type: "image/jpg")


sumare = WorkSpace.create(user: marcio, name: "Sumare Work", price: 1111, description: "Estranho", address: "Av. Purpurina, 89, Sao Paulo")
file = URI.open("https://res.cloudinary.com/dkearav60/image/upload/c_scale,h_1256/v1661374971/office_7.jpg")
sumare.photos.attach(io: file, filename: "04.png", content_type: "image/jpg")

morumbi = WorkSpace.create(user: ronaldo, name: "Morumbi Work", price: 555, description: "Ok", address: "Av. Morumbi, 501, Sao Paulo")
file = URI.open("http://res.cloudinary.com/dkearav60/image/upload/c_scale,w_2336/v1661374979/office_1.jpg")
morumbi.photos.attach(io: file, filename: "05.png", content_type: "image/jpg")

Booking.create(user: ronaldo, start_date: "25-08-2022", end_date: "27-09-2022", amount_due: 7897, work_space: paulista)
Booking.create(user: wagner, start_date: "24-08-2022" , end_date: "27-09-2022", amount_due: 7897, work_space: madalena)
Booking.create(user: marcio, start_date: "29-08-2022" , end_date: "27-09-2022", amount_due: 7897, work_space: lapa)
Booking.create(user: carlos, start_date: "28-08-2022" , end_date: "27-09-2022", amount_due: 7897, work_space: sumare)
Booking.create(user: carlos, start_date: "26-08-2022" , end_date: "27-09-2022", amount_due: 7897, work_space: morumbi)

# reserva1 = Booking.create(user: ronaldo, start_date: "25-08-2022", end_date: "27-09-2022", amount_due: 7897, work_space: paulista)
# reserva2 = Booking.create(user: wagner, start_date: "24-08-2022" , end_date: "27-09-2022", amount_due: 7897, work_space: madalena)
# reserva3 = Booking.create(user: marcio, start_date: "29-08-2022" , end_date: "27-09-2022", amount_due: 7897, work_space: lapa)
# reserva4 = Booking.create(user: carlos, start_date: "28-08-2022" , end_date: "27-09-2022", amount_due: 7897, work_space: sumare)
# reserva5 = Booking.create(user: carlos, start_date: "26-08-2022" , end_date: "27-09-2022", amount_due: 7897, work_space: morumbi)
