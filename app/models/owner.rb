class Owner < ApplicationRecord
  has_many :dogs
  has_many :phone_numbers
end