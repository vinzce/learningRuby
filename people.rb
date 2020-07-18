require 'faker'
require 'sqlite3'

$db = SQLite3::Database.open 'people.db'
$db.execute "CREATE TABLE IF NOT EXISTS people(firstname VARCHAR(255), lastname VARCHAR(255))"


def self.create_people(var)
  x = 0
  names = []

  while x < var
    names.push(Faker::Name.first_name)
    x += 1
  end

  names.each do |name|
    $db.execute "INSERT INTO people (firstname, lastname) VALUES(?, ?)", name, 'Tale'
  end

  puts "Task complete"

end

def self.show_people

  $db.execute "SELECT * FROM people" do |row|
    p row
  end

end
