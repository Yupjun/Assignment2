# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
puts "category seeds part"
[
    ["Free"],["Usful_information"],["Question"]
].each do |x|
    Category.create(name: x[0])
end

puts "search category seeds part"
[
    ["title"],["content"],["campus"],["nickname"]
].each do |y|
    Search.create(search: y[0])
end