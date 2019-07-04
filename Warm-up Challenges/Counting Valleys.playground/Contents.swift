import UIKit

let n = 8
let s = "UDDDUDUU"

func countingValleys(n: Int, s: String) -> Int {

  var start = 0
  var valley = 0

  s.forEach { (step) in
    switch step {
    case "D":
      start -= 1
    case "U":
      start += 1
      if start == 0 {
        valley += 1
      }
    default:
      break
    }
  }

  return valley
}

countingValleys(n: n, s: s)

