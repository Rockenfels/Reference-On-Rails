=begin
~(
  I noticed in our earlier create_bikes migration that I had misspelled hydraulic to signify hydraulic
  brakes on a bike, so I'm changing that here via another migration.
  
  This migration was created using `bin/rails g migration RenameBikeColumn` to correct the attribute 
  name error contained within the original bike table migration. This is the best practice for altering
  tables once you've run migrations- remember, itf's bad practice to alter the schema directly.

  That being said, there's more than one way to make changes without altering the schema directly. First,
  if you're just getting started with a project, you can run `bin/rails db:drop` & `bin/rails db:create` 
  to wipe your database clean and reset it to the point where you can run migrations. From there you can
  simply edit your existing migration before running it again.
)~
=end

class RenameBikeColumn < ActiveRecord::Migration[6.1]
=begin
~(
  An alternate syntax to rename_column is to use `t.rename :old_name, :new_name` inside of a 
  `change_table :bikes do |t|` block, but because I'm only editing the one column name in this
  migration, it was cleaner to simply use the rename_column syntax.
)~
=end
  def change
    rename_column :bikes, :hyraulic, :hydraulic
  end
end
