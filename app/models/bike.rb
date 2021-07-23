=begin
~(
    Validation options:

    `acceptance:` is used when a user needs to have a checkbox activated in a form (think terms of service).
    It also has a default message that can be overridden by pasing `acceptance: { message: 'you must accept!' } `
    validates :terms_of_service, acceptance: { accept: 'yes' }

    if you pass in `{ accept: 'value' | ['val1', 'val2'] }` `acceptance:` requires the user input to be
    one of the ones you specifiy in `accept:`
    validates :eula, acceptance: { accept: ['TRUE', 'accepted'] }

    You can use `validates_associated [:riders, :bike_shops]` to validate the models 
    associated to the one you apply the validation to. BE WARNED though, that if you
    put this validation on both models, you'll create an infite loop!
)~
=end

class Bike < ApplicationRecord
    validates :brand, presence: true
    validates :model, presence: true
    validates :year, presence: true
    validates :gears, presence: true
    has_one :rider
    has_one :bike_shop
end

