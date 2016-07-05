
# ==========
# users
# ==========

jason = User.create!(name: "Jason Ball", email: "jasonlukeball@me.com", password: "password")

5.times do
  User.create!( name: Faker::Name.name, email: Faker::Internet.email, password: Faker::Internet.password(8))
end

users = User.all


# ==========
# lists
# ==========

25.times do
  List.create!( user: users.sample, name: Faker::Hipster.sentence )
end

lists = List.all


# ==========
# todos
# ==========

Todo.find_or_create_by(name: "Something to do")

100.times do
  Todo.create!(user: users.sample, list: lists.sample, name: Faker::Hipster.words(4).join(' ') )
end

todos = Todo.all


puts
puts "DB Seed Finished!"
puts "--------------------"
puts "#{User.count} users created"
puts "#{List.count} lists created"
puts "#{Todo.count} todos created"