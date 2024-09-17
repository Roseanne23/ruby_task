#```ruby
# ```

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

loop = true
while loop

def start
    puts "Do you want to add, delete, search, edit, or exit? (add/delete/exit)"
end
def exit
  puts "are you sure you want to exit (y/n)?"
  answer = gets.chomp
  if answer == "y"
    puts "exit program."
  end
end

def delete(persons)
    puts "Which national ID you want to delete?"
    national_id = gets.chomp.to_i

    if persons.any? { |h| h[:national_id] == national_id }
      persons = persons.reject { |i| i[:national_id] == national_id }
      puts "Successfully deleted."
      puts persons.first(5)
    else
      puts "User not found."
    end
end
def add(persons)
   puts "What is your national id?"
   national_id = gets.chomp.to_i

   if persons.any? { |h| h[:national_id] == national_id }
    puts "Failed to add: National ID already exists. "
  else
    puts "What is your name?"
    name = gets.chomp
    puts "What is your age?"
    age = gets.chomp
    age = age.to_i
    new_user = { national_id: national_id, name: name, age: age }
    persons.insert(0, new_user)
    puts "User added successfully!"
    end
end
def search(persons)
  puts "Enter national id or name"
  search = gets.chomp
  person = persons.find { |p | p[:national_id].to_s == search || p[:name].downcase == search.downcase }
  if person
    puts "User found: National ID: #{person[:national_id]}, Name: #{person[:name]}, Age: #{person[:age]}"
  else
    puts "User not found."
  end
end

def edit(persons)
  puts "Which national ID you want to edit?"
  national_id = gets.chomp.to_i
  edit_user = persons.find { |p| p[:national_id] == national_id }

  if edit_user
    puts "Person found: National ID: #{edit_user[:national_id]}, Name: #{edit_user[:name]}, Age: #{edit_user[:age]}"

     if edit_user
      puts "Editing Person: National ID: #{edit_user[:national_id]}, Name: #{edit_user[:name]}, Age: #{edit_user[:age]}"
      puts "Enter the new name #{edit_user[:name]}:"
      new_name = gets.chomp
      new_name = edit_user[:name] if new_name.empty?
      puts "Enter new age #{edit_user[:age]}:"
      new_age = gets.chomp
      new_age = new_age.to_i if new_age != edit_user[:age]
      edit_user[:name] = new_name
      edit_user[:age] = new_age
      puts "person updated successfully!"
     end
  end
end

puts persons.first(10)
start
answer = gets.chomp.downcase

case answer
when "exit"
  exit
  break
when "delete"
  delete(persons)
when "add"
  add(persons)
when "search"
  search(persons)
when "edit"
  edit(persons)
else
  puts "Invalid input"
end
end
