# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

=begin
~(
    The seeds file is where you can prepopulate your database with records before any
    user ever comes into contact with your app. When you declare new instances of the models 
    you generate and run `bin/rails db:seed` rails will create all of your specified instances 
    (assuming the data you entered is valid) and insert them as rows of their respective tables.

    It's critical that when you're building your instances within this file that you input valid
    data of the correct datatype in the same order as it appears in your schema. If any data is 
    missing or invalid when you run the seed command, rails will abort the process, rollback your
    seeds, and leave you to correct the error(s) and try again.
)~
=end

=begin
~(
    You can add all kinds of data to your seeds before you populate the db. For example, I'm adding
    in uuid so that bikes and riders (and potentially shops at some point) can be identified by a
    unique identifier other than their db id or email address.
)~
=end
require 'uuid'
uuid = UUID.new

# BIKES suspension enum within class: {0: rigid, 1: hard_tail, 2: full_suspension}
# Field order: brand, model, year, color, gears, suspension, hydraulic, tubeless, rider_id, bike_shop_id, price, for_sale
BIKES = [
    # Owned bikes
    marin = Bike.create({brand: "Trek", model: "Marin-7", color: "Blue", suspension: 1, hydraulic: false, tubeless: false}),       # nil is an acceptable value as a placeholder as long as null: true
    stumpy = Bike.create({brand: "Specialized", model: "Stumpjumper", year: 2005, color: "Gray", gears: 8, suspension: 2, hydraulic: true}),     # Because tubeless isn't required and has a default, no value need be passed for the value to be false
    laguna = Bike.create({brand: "GT", model: "Laguna", year: 2019, color: "Aqua", gears: 8, suspension: 1}),                          # The same can be done for hydraulic
    
    # Bikes for sale
    high_tower = Bike.create({brand: "Santa Cruz", model: "High Tower", color: "Yellow", gears: 12, suspension: 2, hydraulic: true, tubeless: true}),  # A comma-separated space can be used as a placeholder for a non-provided field.
    strive = Bike.create({brand: "Canyon", model: "Strive", color: "Cyan/Red", gears: 13, suspension: 2, hydraulic: true, tubeless: true}),
    lowside = Bike.create({brand: "Surly", model: "Lowside", year: 2022, color: "Orange", gears: 12, suspension: 0, hydraulic: true, tubeless: true}),
    kahuna = Bike.create({brand: "Kona", model: "Kahuna", year: 2022, color: "Gold", gears: 12, suspension: 1, hydraulic: true}),
    process = Bike.create({brand: "Kona", model: "Process X DL", year: 2022, color: "Blue/Gren", gears: 12, suspension: 2, hydraulic: true, price: 7199, for_sale: true}),     # Because tubeless isn't required and has a default, no value need be passed for the value to be false
    stance = Bike.create({brand: "Giant", model: "Stance E+ 1 Pro 29", year: 2022, color: "Gray", gears: 8, suspension: 2, hydraulic: true, price: 4200, for_sale: true})      # Because tubeless isn't required and has a default, no value need be passed for the value to be false
]

# Field order: first_name, last_name, preferred_name, email, uid
RIDERS = [
    ray = Rider.create({first_name: "Ray", last_name: "O", preferred_name: "Ray-Ray", email:"bike@test.test", uid: uuid.generate}),
    lins = Rider.create({first_name: "Lindsay", last_name: "O", preferred_name: "Lins", email:"ride@test.test", uid: uuid.generate}),
    brad = Rider.create({first_name: "Brad", last_name: "O", preferred_name: "Mr. Bradford", email:"sendit@test.test", uid: uuid.generate}),
    ralph = Rider.create({first_name: "Ralph", last_name: "C", preferred_name: "Peppo", email:"race@test.test", uid: uuid.generate})
]

# Field order: name, address, phoe_number
BIKE_SHOPS = [
    bss = BikeShop.create({name: "Bicycle Sport Shop", address: "517 S. Lamar Blvd., Austin, TX 78704", phone_number: 5124773472, email: "bss@ilove.bikes", email_confirmation: "bss@ilove.bikes"}),
    mj = BikeShop.create({name: "Mellow Johnny's", address: "400 Nueces St, Austin, TX 78701", phone_number: 5124730222, email: "lance@ilove.bikes", email_confirmation: "lance@ilove.bikes"}),
    wob = BikeShop.create({name: "World of Bikes", address: "723 S Gilbert St, Iowa City, IA 52240", phone_number: 3193518337, email: "corny@ilove.bikes", email_confirmation: "corny@ilove.bikes"})

]

# Using the relations declared in the model file to assign a bike to riders
ray.bikes << stumpy
lins.bikes << laguna
brad.bikes << marin

# Assigning an array of bikes to bike shops
wob.bikes << [high_tower, strive]
bss.bikes << [lowside, process]
mj.bikes << [kahuna, stance]

