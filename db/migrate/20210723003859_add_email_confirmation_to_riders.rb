=begin
~(
  using `confirmation:` signifies to activerecord the associated field has to be checked/interacted with
  in order for your model to be valid. One of the most common usage examples is a checkbox to agree
  to your site's terms that has to be checked to sign up.
)~
=end

class AddEmailConfirmationToRiders < ActiveRecord::Migration[6.1]
  def change
    add_column :riders, :email_confirmation, :string, confirmation: true
  end
end
