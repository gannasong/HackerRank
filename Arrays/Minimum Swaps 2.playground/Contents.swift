import UIKit

let arr = [2, 3, 4, 1, 5]

func minimumSwaps(arr: [Int]) -> Int {
  var a = arr
  var swaps = 0
  var i = 0

  while i < a.count {
    if a[i] == i + 1 {
      i += 1
      continue
    }
    a.swapAt(i, a[i] - 1)
    swaps += 1
  }
  return swaps
}

minimumSwaps(arr: arr)
