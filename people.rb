require 'faker'

x = 0
names = []

while x <= 10
  names.push(Faker::Name.first_name)
  x += 1
end

names.each {|name| puts "Hello, #{name.capitalize}"}

