#```ruby
#  ```
persons = [
  { national_id: 1, name: "Joe", age: 20},
  { national_id: 2, name: "Mark", age: 15},
  { national_id: 3, name: "Kris", age: 35},
  { national_id: 4, name: "Melody", age: 28},
  { national_id: 5, name: "Stacy", age: 13},
  { national_id: 6, name: "Lovi", age: 32},
  { national_id: 7, name: "Carrie", age: 42},
  { national_id: 8, name: "Randy", age: 25},
  { national_id: 9, name: "Rika", age: 21},
  { national_id: 10, name: "Bill", age: 50},
  { national_id: 11, name: "Kate", age: 65},
  { national_id: 12, name: "Rome", age: 70},
  { national_id: 13, name: "Vanessa", age: 48},
  { national_id: 14, name: "Billie", age: 45},
  { national_id: 15, name: "Mori", age: 51},
  { national_id: 16, name: "Pat", age: 29},
  { national_id: 17, name: "Paul", age: 16},
  { national_id: 18, name: "Yor", age: 52},
  { national_id: 19, name: "Anna", age: 17},
  { national_id: 20, name: "Rick", age: 78}
]
#puts persons

puts "Do you want to add or delete user?(add/delete)"
answer = gets.chomp.downcase

if answer == "delete"
  puts "Which national ID you want to delete?"
  national_id = gets.chomp.to_i

  if persons.any? {|person| person[:national_id] == national_id}
    persons = persons.reject {|person| person[:national_id] == national_id}
    puts "Successfully deleted."
    puts persons

  else
    persons.any? {|person| person[:national_id] == national_id}
    puts "User not found"
    end
end

puts "Please enter your national id"
national_id = gets.chomp.to_i

if persons.any? {|person| person[:national_id] == national_id}
  puts "Failed to add: National ID already exists."
else
  puts "What is your name?"
end
name = gets.chomp
puts "What is your age?"
age = gets.chomp.to_i

new_person = {national_id: national_id, name: name, age: age}
persons.insert(0, new_person)

puts "User added successfully!"
puts persons
