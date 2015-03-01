User.delete_all
Event.delete_all
Playdate.delete_all
Review.delete_all

# SEED DATA FOR ASSOCIATIONS TESTING #
# USERS #
u1 = User.create(
  email:"bob@email.com",
  dog_name: "bax",
  owner_name: "bob",
  )
u2 = User.create(
  email:"sally@email.com",
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
