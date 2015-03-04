User.delete_all
Event.delete_all
Playdate.delete_all
Review.delete_all
UserMatch.delete_all

# SEED DATA FOR ASSOCIATIONS TESTING #
# USERS #

40.times do |n|
  breed= ["Yorkshire Terrier", "Poodle", "Dachshund", "Bull Dog", "Golden Retriever", "Dalmation", "Chihuahua", "Siberian Husky", "Labrador", "Maltease", "Cavalier King Charles Spaniel", "German Shepherd", "Pug"]
  address= ["Imperial Wharf, 
Townmead Road, Fulham, 
London, SW6 2TW", "Grosvenor Square, 
  London, 
  W1K", "12 Queen's Terrace,
  London,
  NW8 6DF", "
  South Lodge,
  Grove End Road, 
  London, 
  NW8 9ER", "2-3 Ladbroke Square, 
  London, 
  W11 3LX", "Berkeley Square, 
  Mayfair, 
  London, 
  W1J" ]  
  a= ["female", "male", "both"]
  b= ["outdoor", "indoor"]
  c= ["neutered", "unneutered"]
  d= ["weekends", "weekday-daytime", "weekday-evening"]
  email="example-#{n+1}@test.com"
  password= "password"
  password_confirmation= "password"
  dog_name= Faker::Name.first_name
  dog_age= Faker::Number.number(1)
  breed= breed.shuffle.pop
  owner_name= Faker::Name.name
  address= address.shuffle.pop
  
  User.create!(email: email,
  password: password,
  password_confirmation: password_confirmation,
  dog_name: dog_name,
  dog_age: dog_age,
  breed: breed,
  owner_name: owner_name,
  address: address
  )

  u= User.last
  u.preference_list.add(a.shuffle.pop, b.shuffle.pop, c.shuffle.pop, d.shuffle.pop)
end

u1 = User.create(
  email:"bob@email.com",
  password: "password",
  password_confirmation: "password",
  dog_name: "bax",
  gender:"male",
  dog_age: 1,
  breed: "golden retriever",
  owner_name: "bob",
  address: "
  Imperial Wharf, 
  Townmead Road, Fulham, 
  London, SW6 2TW"
  )
u1.preference_list = "indoor, male, neutered, weekends"
u1.save

u2 = User.create(
  email:"sally@email.com",
  password: "password",
  password_confirmation: "password",
  dog_name: "ted",
  gender:"male",
  dog_age: 7,
  breed: "Cavalier King Charles Spaniel",
  owner_name: "sally",
  address: "
  Grosvenor Square, 
  London, 
  W1K"
  )
u2.preference_list = "outdoor, female, unneutered, weekday-daytime"
u2.save

u3 = User.create!(
  email:"scruffy@woofy.com",
  password: "password",
  password_confirmation: "password",
  dog_name: "Mr Scruff",
  dog_age: 2,
  gender:"male",
  breed: "Yorkshire Terrier",
  owner_name: "Vinisha",
  address: "
  12 Queen's Terrace,
  London,
  NW8 6DF
  "
  )
u3.preference_list = "indoor, male, neutered, weekends"
u3.save

u4 = User.create(
  email:"spot@thedog.com",
  password: "password",
  password_confirmation: "password",
  dog_name: "Spot",
  dog_age: 12,
  breed: "Poodle",
  gender:"female",
  owner_name: "Vince Vaun",
  address: "
  South Lodge,
  Grove End Road, 
  London, 
  NW8 9ER"
  )
u4.preference_list = "outdoor, female, unneutered, weekday-daytime"
u4.save

u5 = User.create(
  email:"coco@pops.com",
  password: "password",
  password_confirmation: "password",
  dog_name: "coco",
  gender:"female",
  dog_age: 15,
  breed: "Dachshund",
  owner_name: "jane eyre",
  address: "
  2-3 Ladbroke Square, 
  London, 
  W11 3LX"
  )
u5.preference_list = "indoor, outdoor, both, unneutered, weekday-evening"
u5.save

u6 = User.create(
  email:"perdita@dalmations.com",
  password: "password",
  password_confirmation: "password",
  dog_name: "perdita",
  gender:"female",
  dog_age: 5,
  breed: "Siberian Husky",
  owner_name: "pongo",
  address: "
  Berkeley Square, 
  Mayfair, 
  London, 
  W1J"
  )
u6.preference_list = "indoor, outdoor, both, unneutered, weekday-evening"
u6.save

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

