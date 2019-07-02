import UIKit

let n = 9
let ar: [Int] = [10, 20, 20, 10, 10, 30, 50, 10, 20]

func sockMerchant(n: Int, ar: [Int]) -> Int {
  var doneArray: [Int] = []
  var match = 0

  for i in 0..<n {
    let currentColor = ar[i]
    if let index = doneArray.firstIndex(of: currentColor) {
      match += 1
      doneArray.remove(at: index)
    } else {
      doneArray.append(currentColor)
    }
  }

  return match
}

sockMerchant(n: n, ar: ar)

