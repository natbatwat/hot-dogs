<<<<<<< HEAD
User.delete_all
Event.delete_all
Playdate.delete_all
Review.delete_all

# SEED DATA FOR ASSOCIATIONS TESTING #
# USERS #
u1 = User.create(
  email:"bob@email.com",
  encrypted_password: "password",
  dog_name: "bax",
  owner_name: "bob",
  )

u2 = User.create(
  email:"sally@email.com",
  encrypted_password: "password",
  dog_name: "ted",
  owner_name: "sally",
  )

e1 = Event.create(
  name:"park meetup",
  )

e2 = Event.create(
  name:"soho walk",
  )

p1 = Playdate.create(
  name:"date at bax house",
  )
=======
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


# event. name. date. place. time. event_rating

Event.delete_all

ev1 = Event.create(name:'Doggy Brunch', place:'Gaucho, Hampstead')
ev2 = Event.create(name:'Doggy Walks', place:'Regents Park')
ev1 = Event.create(name:'Doggy Speed Dates', place:'The Duke of York, St Johns Wood')
>>>>>>> development
