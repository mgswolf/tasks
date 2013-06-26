# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'faker'
puts '---Cleaning DataBase --'
[User].map(&:delete_all)

#admin
puts '---Creating Admin user ---'
User.create!(email: 'admin@tasks.com.br', password: 'taskpass',
  name: 'Admin Tasks', cpf: '12356498')


#normal users
puts '---Creating Normal Users---'
users = []
10.times do
  name = Faker::Name.name
  users << FactoryGirl.create(:user, {
      name: name,
      email: Faker::Internet.email(name),
  })
end
