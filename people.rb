require 'faker'

puts Faker::Name.name
#Get names from input
puts "Give names and saperate with comma's"
names = gets.chop

#Slice string up
array = names.split(',')
array.each {|name| puts "Hello, #{name.capitalize}"}

