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

p1 = Playdate.create(
  name:"date at bax house",
  )

ev1 = Event.create(name:'Doggy Brunch', place:'Gaucho, Hampstead')
ev2 = Event.create(name:'Doggy Walks', place:'Regents Park')
ev1 = Event.create(name:'Doggy Speed Dates', place:'The Duke of York, St Johns Wood')
