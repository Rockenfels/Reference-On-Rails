=begin
  This file was created using `bin/rails g resource Bike brand:string model:string year:integer color:string gears:integer suspension:integer hyraulic:boolean tubeless:boolean`.
  
  For an overview on migration basics, see the rails guide: https://guides.rubyonrails.org/active_record_migrations.html

  DEFAULT CONFIG: SQLite3
  These are all the data types that are native to a rails database
  "NATIVE_DATABASE_TYPES = {
    primary_key: "bigint auto_increment PRIMARY KEY",
    string:      { name: "varchar", limit: 255 },
    text:        { name: "text" },
    integer:     { name: "int", limit: 4 },
    float:       { name: "float", limit: 24 },
    decimal:     { name: "decimal" },
    datetime:    { name: "datetime" },
    timestamp:   { name: "timestamp" },
    time:        { name: "time" },
    date:        { name: "date" },
    binary:      { name: "blob" },
    blob:        { name: "blob" },
    boolean:     { name: "tinyint", limit: 1 },
    json:        { name: "json" }
  } -Rails source code via Full Stack Heroes: https://fullstackheroes.com/rails/column-types/

  Here's rails guide to db setup: https://guides.rubyonrails.org/v2.3/getting_started.html#configuring-a-database

  OPTIONAL CONFIG - PostgreSQL: using postrges as your database can give you access to additinal data types
  such as an Array, HStore, JSON/JSONB, etc.
  > Rails can be configured to use this db using `rails new appname -d mysql`
  > Setting up Rails with Postgres: https://guides.rubyonrails.org/configuring.html#configuring-a-postgresql-database
  > DB-specific data types & usage: https://guides.rubyonrails.org/active_record_postgresql.html
  
  OPTIONAL CONFIG - MySQL: 
    > Rails can be configured to use this db using `rails new appname -d mysql`
    > For all native MySQL data types, see the documentation: https://dev.mysql.com/doc/refman/8.0/en/data-types.html

  NOTE: In order to run your migrations, you have to first run `bin/rails db:create` which sets up your 
        apps database for you to be able to run migrations on.
=end

# The generator creates a migration that inherits from v6.1 of ActiveRecord::Migration.
# The change method combines the functionality of up and down methods and is used regularly.
class CreateBikes < ActiveRecord::Migration[6.1]
  def change
    create_table :bikes do |t|
      # null: false prevents a field of any new bike created from being null
      t.string :brand, null: false
      t.string :model, null: false
      # default: Time.now.year provides the default value of the current year to year field
      t.integer :year, null: false, default: Time.now.year
      t.string :color
      t.integer :gears, null: false, default: 9 
      t.integer :suspension, null: false
      t.boolean :hyraulic, default: false # Note the spelling error corrected in a future migration
      t.boolean :tubeless, default: false

      # See note below for more timestaps info
      t.timestamps
    end
  end
end
=begin
  When t.timestamps is run within this migrattion, it weill create the following two t.datetime fields:
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
=end