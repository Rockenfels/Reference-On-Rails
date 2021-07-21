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

# BIKES suspension enum within class: {0: rigid, 1: hard_tail, 2: full_suspension}
# Attribute order: brand, model, year, color, gears, suspension, hydraulic, tubeless
BIKES = [
    {"Trek", "Marin-7", nil, "Blue", nil, 1, false, false},       # nil is an acceptable value as a placeholder as long as null: true
    {"Specialized", "Stumpjumper", 2005, "Gray", 8, 2, true},     # Because tubeless isn't required and has a default, no value need be passed for the value to be false
    {"GT", "Laguna", 2019, "Aqua", 8, 1}                          # The same can be done for hydraulic
    {"Santa Cruz", "High Tower", , "Yellow", 12, 2, true, true},  # A comma-separated space can be used as a placeholder for a non-provided field.
    {"Canyon", "Strive", , "Cyan/Red", 13, 2, true, true},
    {"Surly", "Lowside", 2021, "Orange", 1, 0, true, true},
    {"Kona", "Kahuna", 2022, "Gold", 12, 1, true, false}
]
