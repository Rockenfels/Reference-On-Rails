=begin
~(
  NOTE: in addition to `acceptance: { accept: ['val1', 'val2'] }` there's also an `exclusion: { in: %w(www us ca au)}`
  to exclude the specifdied values from being considred valid.

  OTHER VALIDATIONS:
  > `format: { [ with: | without: ] /\A[a-zA-Z]+\z/, message: "only allows letters" }`
  > `inclusion: { in: %w(small medium large), message: "%{value} is not a valid size" }`
  > `length: { minimum: 2, maximum: 8, in: 2..6, is: 5}` (:wrong_length, :too_long, and :too_short can be passed in to 
     deliver a message specific to why the field is invalid)
  >  `numericality: { only_integer: true}` (also accepts: greater_than:, less_than:, greater_than_or_equal_to:, equal_to:, 
    less_than:, less_than_or_equal_to:, other_than:, odd:, & even:)
  > uniqueness: [ true | { scope: :year, case_sensitive: true, message: "should happen once per year" } ]

  COMMON VALIDATION OPTIONS
  > :allow_nil - skips the validation when the value being validated is nil
  > :allow_blank - similar to :allow_nil, but allows empty strings as well
  > :on - determines when the validation is run (:create/:update)
  > :if and :unless - called with a method to be invoked right before validation; can be used with 
    a lambda like this: `confirmation: true, unless: -> { password.blank? }`
  > 


  NOTE: validation messages passed to a validation can contain %{value}, %{count}, %{attribute}, 
  and %{model} to access the specific value contained within the field.
)~
=end

class BikeShop < ApplicationRecord
  validates :name, :address, :phone_number, presence: true
  validates :email, presence: {case_sensitive: true}
  has_many :bikes
end
