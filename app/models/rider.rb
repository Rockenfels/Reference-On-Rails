=begin
~(
  NOTE: you can pass an array of fields to a validator to apply it to each field rather
  than writing separate lines for each validation.  

  the `confirmation:` field requires not only that the specified field be filled in,
  but the field `field_confirmation` as well. Passing `{case_sensitive: true}` requires performs
  a case sensitive check between the `field` and `field_confirmation`

  ADDING A CUSTOM VALIDATION: 
  class GoodnessValidator < ActiveModel::Validator
    def validate(record)
      if record.first_name == "Evil"
        record.errors.add :base, "This person is evil"
      end

      --OR--

      # This option is used in conjunction with `validates_with GoodnessValidator, fields: [:first_name, :last_name]`
      if options[:fields].any? { |field| record.send(field) == "Evil" }
        record.errors.add :base, "This person is evil"
      end
    end
  end

class Person < ApplicationRecord
  validates_with GoodnessValidator
end
)~
=end

class Rider < ApplicationRecord
  validates :first_name, :last_name, presence: true
  validates :email, confirmation: {case_sensitive: true}, presence: true
  has_many :bikes
end
