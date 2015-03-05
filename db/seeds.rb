User.delete_all
Event.delete_all
Playdate.delete_all
Review.delete_all
UserMatch.delete_all

# SEED DATA FOR ASSOCIATIONS TESTING #
# USERS #

80.times do |n|
  breed= ["Yorkshire Terrier", "Poodle", "Dachshund", "Bull Dog", "Golden Retriever", "Dalmation", "Chihuahua", "Siberian Husky", "Labrador", "Maltease", "Cavalier King Charles Spaniel", "German Shepherd", "Pug"]
  address= ["Imperial Wharf, Townmead Road, Fulham, London, SW6 2TW", "Grosvenor Square,
  London, W1K", "12 Queen's Terrace, London, NW8 6DF", "South Lodge, Grove End Road, London,
  NW8 9ER", "2-3 Ladbroke Square, London, W11 3LX", "Berkeley Square, Mayfair, London, W1J" ]  
  a= ["female", "male", "both"]
  b= ["outdoor", "indoor"]
  c= ["neutered", "unneutered"]
  d= ["weekends", "weekday-daytime", "weekday-evening"]
  neutered = [true, false]
  gender = ["male", "female"]
  dog_picture = ["https://s3-eu-west-1.amazonaws.com/wdi-11-natalie/pups/tumblr_n5fq2cP4Qe1sr44j9o1_500.jpg", "https://s3-eu-west-1.amazonaws.com/wdi-11-natalie/pups/tumblr_n5wsb0bSLy1stlkgho1_400.jpg", "https://s3-eu-west-1.amazonaws.com/wdi-11-natalie/pups/tumblr_n5wtr4LXOC1stlkgho1_500.jpg", "https://s3-eu-west-1.amazonaws.com/wdi-11-natalie/pups/tumblr_n5wu13RNXe1stlkgho1_500.jpg", "https://s3-eu-west-1.amazonaws.com/wdi-11-natalie/pups/tumblr_n5wvfqN07Z1stlkgho1_500.jpg", "https://s3-eu-west-1.amazonaws.com/wdi-11-natalie/pups/tumblr_n5ww93xhTe1stlkgho1_1280.jpg", "https://s3-eu-west-1.amazonaws.com/wdi-11-natalie/pups/tumblr_n65i65oYiI1stlkgho1_500.jpg", "https://s3-eu-west-1.amazonaws.com/wdi-11-natalie/pups/tumblr_n7f9v0OkBZ1s8mgkyo1_1280.jpg", "https://s3-eu-west-1.amazonaws.com/wdi-11-natalie/pups/tumblr_n8hmdj3RpR1qhptrqo1_500.jpg", "https://s3-eu-west-1.amazonaws.com/wdi-11-natalie/pups/tumblr_n8inzhwICC1toamj8o1_500.jpg", "https://s3-eu-west-1.amazonaws.com/wdi-11-natalie/pups/tumblr_n94os4kty31rylzllo1_500.jpg", "https://s3-eu-west-1.amazonaws.com/wdi-11-natalie/pups/tumblr_nby136tc8l1tkqa0bo1_1280.jpg", "https://s3-eu-west-1.amazonaws.com/wdi-11-natalie/pups/tumblr_ni03vnfFXj1rbibvmo1_1280.jpg", "https://s3-eu-west-1.amazonaws.com/wdi-11-natalie/pups/tumblr_ni05u8YNNK1rbibvmo1_500.jpg", "https://s3-eu-west-1.amazonaws.com/wdi-11-natalie/pups/tumblr_ni05v0wQai1rbibvmo1_500.jpg", "https://s3-eu-west-1.amazonaws.com/wdi-11-natalie/pups/tumblr_ni05v8rw5I1rbibvmo1_500.jpg", "https://s3-eu-west-1.amazonaws.com/wdi-11-natalie/pups/tumblr_ni3f96YQXm1szulgvo1_400.jpg", "https://s3-eu-west-1.amazonaws.com/wdi-11-natalie/pups/tumblr_niagbbG2x11szulgvo1_1280.jpg", "https://s3-eu-west-1.amazonaws.com/wdi-11-natalie/pups/tumblr_nify90IW4r1szulgvo1_1280.jpg", "https://s3-eu-west-1.amazonaws.com/wdi-11-natalie/pups/tumblr_nij9xaPgVL1tq5nfoo1_1280.jpg", "https://s3-eu-west-1.amazonaws.com/wdi-11-natalie/pups/tumblr_niy2mcQchg1szulgvo1_1280.jpg", "https://s3-eu-west-1.amazonaws.com/wdi-11-natalie/pups/tumblr_njx1mlGxpk1ts97dno1_500.jpg", "https://s3-eu-west-1.amazonaws.com/wdi-11-natalie/pups/tumblr_njxxjm4nsT1szulgvo1_1280.jpg", "https://s3-eu-west-1.amazonaws.com/wdi-11-natalie/pups/tumblr_nk1de4saqX1unmfnbo1_500.jpg", "https://s3-eu-west-1.amazonaws.com/wdi-11-natalie/pups/tumblr_nk9jnkbNr91tiokedo1_1280.jpg", "https://s3-eu-west-1.amazonaws.com/wdi-11-natalie/pups/tumblr_nkala2SxER1szulgvo1_1280.jpg", "https://s3-eu-west-1.amazonaws.com/wdi-11-natalie/pups/tumblr_nkd5sktEtn1szulgvo1_1280.jpg"]
  email="example-#{n+1}@test.com"
  password= "password"
  password_confirmation= "password"
  dog_name= Faker::Name.first_name
  dog_age= Faker::Number.number(1)
  breed= breed.shuffle.pop
  owner_name= Faker::Name.name
  address= address.shuffle.pop
  neutered= neutered.shuffle.pop
  gender= gender.shuffle.pop
  dog_picture = dog_picture.shuffle.pop
  
  User.create!(email: email,
  password: password,
  password_confirmation: password_confirmation,
  dog_name: dog_name,
  dog_age: dog_age,
  breed: breed,
  owner_name: owner_name,
  address: address,
  owner_bio: 'Cupcake ipsum dolor sit amet lollipop tiramisu. Icing biscuit croissant cupcake carrot cake carrot cake dragée sesame snaps tiramisu. Cake cake cookie marshmallow marshmallow. Sugar plum powder soufflé chocolate cake halvah.',
  dog_bio: 'Cupcake ipsum dolor sit amet. Toffee cake tiramisu jujubes apple pie jelly soufflé cookie wafer. Bear claw biscuit tootsie roll sweet roll caramels dessert carrot cake icing muffin. Gummies cotton candy danish topping.',
  gender: gender,
  dog_picture: dog_picture
  )

  u= User.last
  u.preference_list.add(a.shuffle.pop, b.shuffle.pop, c.shuffle.pop, d.shuffle.pop)
  u.save
end


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

