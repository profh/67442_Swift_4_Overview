//: CONTROL FLOW


let individualScores = [75, 43, 103, 87, 12]
var teamScore = 0

for score in individualScores {
  if score > 50 {
    teamScore += 3
  } else {
    teamScore += 1
  }
}
print(teamScore)


//** Switch statements **//
//let vegetable = "celery"
let vegetable = "red pepper"
vegetable.hasPrefix("green")

switch vegetable {
  case "celery":
    print("Is a vehicle for delivering peanut butter")
  case "cucumber", "watercress":
    print("Craig's favorite tea sandwich")
  case let x where x.hasSuffix("pepper"):
    print("Is it a spicy \(x)?")
  default:
    print("Everything tastes good in soup")
}

//** More on for- **//
let interestingNumbers = [
  "Prime": [2, 3, 5, 7, 11, 13],
  "Fibonacci": [1, 1, 2, 3, 5, 8],
  "Square": [1, 4, 9, 16, 25, 36],
]
var largest = 0
for (_, numbers) in interestingNumbers {
  for number in numbers {
    if number > largest {
      largest = number
    }
  }
}
print(largest)

//** Using a range **//
var firstForLoop = 0
for i in 0..<4 {
  firstForLoop += i
}
print(firstForLoop)

//** traditional no longer works (Swift 3) **//
/* var secondForLoop = 0
for var i = 0; i < 4; i += 1 {
  secondForLoop += i
}
print(secondForLoop) */

//** More complex for loops **//
var secondForLoop = 0
for i in stride(from: 1, to: 4, by: 1) {
    secondForLoop += i
}
print(secondForLoop)

//** While **//
var n = 2
while n < 100 {
  n = n * 2
}
print(n)

