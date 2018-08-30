//: GENERICS

import Foundation

// simple inspection function for strings
func inspectString(value: String) {
  print("Received String with the value: '\(value)'")
}
inspectString(value: "Shake it off")

// similar function for integers
func inspectInt(value: Int) {
  print("Received Int with the value: \(value)")
}
inspectInt(value: 51)


// making a generalized version with generics
func inspect<T>(value: T) {
    print("Received \(type(of: value)) with the value: \(value)")
}

inspect(value: "Haters gonna hate")
inspect(value: 12)
