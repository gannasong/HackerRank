import UIKit

let s = "adads"
let n = 12

func repeatedString(s: String, n: Int) -> Int {
  var mainCount = n / s.count * s.filter({ $0 == "a" }).count
  let remainder = n % s.count

  for i in 0..<remainder {
    if Array(s)[i] == "a" {
      mainCount += 1
    }
  }
  return mainCount
}

repeatedString(s: s, n: n)
