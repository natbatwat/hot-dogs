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
  dog_age: 1,
  breed: "golden retriever",
  owner_name: "bob",
  address: "SW6"
  )
u1.preference_list.add("indoor", "male", "neutered", "weekends")

u2 = User.create(
  email:"sally@email.com",
  encrypted_password: "password",
  dog_name: "ted",
  dog_age: 7,
  breed: "Cavalier King Charles Spaniel",
  owner_name: "sally",
  address: "W1"
  )
u2.preference_list.add("outdoor", "female", "unneutered", "weekday-daytime")

u3 = User.create(
  email:"scruffy@woofy.com",
  encrypted_password: "password",
  dog_name: "Mr Scruff",
  dog_age: 2,
  breed: "Yorkshire Terrier",
  owner_name: "Vinisha",
  address: "N1"
  )
u3.preference_list.add("indoor", "male", "neutered", "weekends")

u4 = User.create(
  email:"spot@thedog.com",
  encrypted_password: "password",
  dog_name: "Spot",
  dog_age: 12,
  breed: "Poodle",
  owner_name: "Vince Vaun",
  address: "EC"
  )
u4.preference_list.add("outdoor", "female", "unneutered", "weekday-daytime")

u5 = User.create(
  email:"coco@pops.com",
  encrypted_password: "password",
  dog_name: "coco",
  dog_age: 15,
  breed: "Dachshund",
  owner_name: "jane eyre",
  address: "SE1"
  )
u5.preference_list.add("indoor", "outdoor", "both", "unneutered", "weekday-evening")

u6 = User.create(
  email:"perdita@dalmations.com",
  encrypted_password: "password",
  dog_name: "perdita",
  dog_age: 5,
  breed: "Siberian Husky",
  owner_name: "pongo",
  address: "E1"
  )
u6.preference_list.add("indoor", "outdoor", "both", "unneutered", "weekday-evening")


p1 = Playdate.create(
  name:"date at bax house"
  )

p2 = Playdate.create(
  name:"date at primrose hill park"
  )

p3 = Playdate.create(
  name:"date at a cafe"
  )

p4 = Playdate.create(
  name:"strole down marlyborne high street"
  )

p5 = Playdate.create(
  name:"date at doggy yoga"
  )

p6 = Playdate.create(
  name:"date at winter wonderland"
  )

ev1 = Event.create(name:'Doggy Brunch', place:'Gaucho, Hampstead')
ev2 = Event.create(name:'Doggy Walks', place:'Regents Park')
ev3 = Event.create(name:'Doggy Speed Dating', place:'The Duke of York, St Johns Wood')
ev4 = Event.create(name:'Dog Show', place:'Royal Albert Hall')
ev5 = Event.create(name:'Doggy Olympics', place:'Hyde Park')
ev6 = Event.create(name:'Doggy Obstical Course', place:'Hampstead Heath')

