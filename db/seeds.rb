# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.delete_all
User.create(email: "admin@gmail.com", password: "12345678")
puts "create a user"

Story.delete_all
6.times do
  Story.create(title: "Bootstrap", url: "https://getbootstrap.com/docs/3.3/css/#helper-classes-center", user_id: User.first.id)
  Story.create(title: "新生大学", url: "https://fullstack.xinshengdaxue.com/", user_id: User.first.id)
  Story.create(title: "launchschool", url: "https://launchschool.com/books", user_id: User.first.id)
  Story.create(title: "W3chools", url: "https://www.w3schools.com/", user_id: User.first.id)
  Story.create(title: "Rails 实战圣经", url: "https://ihower.tw/rails/index-cn.html", user_id: User.first.id)
end
puts "create 30 stories"
