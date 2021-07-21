=begin
~(
  This migrartion was created using: 
  `bin/rails g model Rider first_name:string last_name:string preferred_name:string email:string uid:string bike:references`

  Using `:references` within the generation of the migration will generate the following line of code:
        `t.references :bike, null: false, foreign_key: true`
        
  Because a rider or bike shop can exist without having a bike directly associated to it (eveyone starts
  out ambulatory), I set null to true within the create_table block.
  )~
=end

class CreateRiders < ActiveRecord::Migration[6.1]
  def change
    create_table :riders do |t|
      t.string :first_name, null:false, default:""
      t.string :last_name, null:false, default:""
      t.string :preferred_name
      t.string :email, null:false
      t.string :uid, null: false

      t.timestamps
    end
  end
end
