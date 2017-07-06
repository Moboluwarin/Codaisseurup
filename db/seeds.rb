# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Photo.destroy_all
Category.destroy_all
Event.destroy_all
Profile.destroy_all
User.destroy_all





#users
tolu = User.create(email:"tolu@yahoo.com", password:"1234abcd")
#event
event1 = Event.create(name:"baking", description:"a time to bake", location:"Almere 24", price:100,capacity:20,includes_food:true, includes_drinks:true,
starts_at:Time.now, ends_at: Date.parse('31-12-2017'), active:true, user:tolu)


  #categories
  modern_and_minimal = Category.create(name: "Modern and Minimal")
  sleek_and_sophisticated = Category.create(name: "Sleek and Sophisticated")
  warm_and_cozy = Category.create(name: "Warm and Cozy")
  event_with_a_view = Category.create(name: "Event with a View")


  #Photos
  photo1 = Photo.create(remote_image_url: "http://res.cloudinary.com/www-united-farmland/image/upload/v1499336546/sample.jpg",event: event1)
  photo2 = Photo.create(remote_image_url: "http://res.cloudinary.com/www-united-farmland/image/upload/v1499336546/sample.jpg",event: event1)
  photo3 = Photo.create(remote_image_url: "http://res.cloudinary.com/www-united-farmland/image/upload/v1499336546/sample.jpg",event: event1)
