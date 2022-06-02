# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

[
  {email: "nathan@brandnewbox.com"},
  {email: "matt@brandnewbox.com"},
  {email: "will@brandnewbox.com"},
  {email: "josh@brandnewbox.com"},
  {email: "isaac@brandnewbox.com"},
  {email: "ashley@brandnewbox.com"},
  {email: "ryanstevencooper@gmail.com"}
].each do |user|
  new_user = User.find_or_initialize_by(email: user[:email])
  if new_user.new_record?
    new_user.password = "password"
    new_user.update!(user)
  end
end

100.times {
  Book.create(
    title: Faker::Book.unique.title,
    price: Faker::Number.decimal(l_digits: 3, r_digits: 2),
    description: Faker::Hacker.say_something_smart
  )
}