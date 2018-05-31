# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


def create_phone_number(owner)
  type = %w[mobile home].sample
  PhoneNumber.create!(owner: owner, number: Faker::PhoneNumber.phone_number, number_type: type)
end

def create_dog(owner)
  Dog.create!(
    owner: owner,
    name: Faker::Dog.name,
    breed: Faker::Dog.breed,
    age: Faker::Dog.age,
    gender: Faker::Dog.gender
  )
end


1000.times do
  owner = Owner.create!(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    prefix: Faker::Name.prefix,
    profession: Faker::Name.title
  )
  rand(0..2).times { create_dog(owner) }
  rand(0..2).times { create_phone_number(owner) }

end