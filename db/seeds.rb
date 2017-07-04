# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
tolu = User.create(email:"tolu@yahoo.com", password:"1234abcd")
event = Event.create(name:"baking", description:"a time to bake", location:"Almere 24", price:100,capacity:20,
  includes_food:true, includes_drinks:true, starts_at:Time.now, ends_at: Date.parse('31-12-2017'), active:true, user:tolu)
