import UIKit

let s1 = "hello"
let s2 = "world"

func twoStrings(s1: String, s2: String) -> String {
  var dict: [Character: Bool] = [:]
  s1.map { dict[$0] = true }

  for i in s2 {
    if let _ = dict[i] {
      return "YES"
    }
  }
  return "NO"
}

twoStrings(s1: s1, s2: s2)
