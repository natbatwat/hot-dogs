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
