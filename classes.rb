class Person
  attr_accessor :name, :age, :national_id

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

  persons.each do |person|
    new_person = Person.new
    new_person.name = person[:name]
    new_person.national_id = person[:national_id]
    new_person.age = person[:age]
  end
end