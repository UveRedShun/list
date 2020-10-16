# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

100.times do |n| #100件シードデータを作成するということ。
  name = Faker::Movies::HarryPotter.character
  password = "password"
  User.create!(user_name: name,
               email: "test#{n + 1}@example.com",
               password: password,
               password_confirmation: password,
               )
end