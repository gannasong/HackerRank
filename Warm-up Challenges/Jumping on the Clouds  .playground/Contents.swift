import UIKit

var testArray = [0, 0, 1, 0, 0, 1, 0]
        // index 0  1  2  3  4  5  6

func jumpingOnClouds(c: [Int]) -> Int {
  var jump = 0
  let cloudSize = c.count
  var index = 0

  while index < cloudSize - 1 {
    if (index + 2) < cloudSize && c[index+2] == 0 {
      index += 2
    } else {
      index += 1
    }
    jump += 1
  }

  return jump
}

jumpingOnClouds(c: testArray)
