// PATTERN MATCHING AND TUPLES

// Switch statement with tuples
let authentication = (name: "malcolm", password: "IloveInara")

switch authentication {
case ("wash", "IloveZoe"):
  print("Hello, Wash!")
case ("malcolm", "IloveInara"):
  print("Hello, Mal!")
default:
  print("Who are you?")
}
//
//
//// Ingnoring part of the switch statement
let authentication2 = (name: "malcolm", password: "IloveInara", ipAddress: "127.0.0.1")

switch authentication2 {
case ("wash", "IloveZoe", _):
  print("Hello, Wash!")
case ("malcolm", "IloveInara", _):
  print("Hello, Mal!")
default:
  print("Who are you?")
}


// Calculated tuples: do the fizzbuzz problem in Swift
func fizzbuzz(number: Int) -> String {
  switch (number % 3 == 0, number % 5 == 0) {
  case (true, false):
    return "Fizz"
  case (false, true):
    return "Buzz"
  case (true, true):
    return "FizzBuzz"
  case (false, false):
    return String(number)
  }
}

for num in 1..<100 {
  print(fizzbuzz(number: num))
}


// Matching in a loop
let mal = (name: "malcolm", password: "IloveInara")
let wash = (name: "wash", password: "IloveZoe")
let jayne = (name: "jayne", password: "IloveMe")

let users = [mal, wash, jayne]

for user in users {
  print(user.name)
}

for case ("malcolm", "IloveInara") in users {
  print("Malcolm has the password IloveInara")
}

for case let (name, password) in users {
  print("User \(name) has the password \(password)")
}


// Pattern matching ranges
//let age = 50
//if 0 ..< 18 ~= age {
//  print("You have the energy and time, but not the money")
//} else if 18 ..< 70 ~= age {
//  print("You have the energy and money, but not the time")
//} else {
//  print("You have the time and money, but not the energy")
//}
//
//// Alternative is to use contains method for range
//if (0 ..< 18).contains(age) {
//  print("You have the energy and time, but not the money")
//} else if (18 ..< 70).contains(age) {
//  print("You have the energy and money, but not the time")
//} else {
//  print("You have the time and money, but not the energy")
//}
//
//
let agedUser = (name: "malcolm", password: "IloveInara", age: 50)

switch agedUser {
case let (name, _, 0 ..< 18):
  print("\(name) has the energy and time, but no money")
case let (name, _, 18 ..< 70):
  print("\(name) has the money and energy, but no time")
case let (name, _, _):
  print("\(name) has the time and money, but no energy")
}

print(agedUser)
