import UIKit

var a = [3, 2, 1, 6, 4, 5, 10, 8, 9, 7]

func countSwaps(a: [Int]) -> Void {
  var ar: [Int] = a
  var temp = 0
  var first = 0
  var last = 0
  var count = 0

  for _ in 0..<ar.count {
    for j in 0..<ar.count - 1 {
      if ar[j] > ar[j+1] {
        temp = ar[j+1]
        ar[j+1] = ar[j]
        ar[j] = temp
        count += 1
      }
    }
  }


  first = ar[0]
  last = ar[ar.count-1]
  print("Array is sorted in \(count) swaps.")
  print("First Element: \(first)")
  print("Last Element: \(last)")
}

countSwaps(a: a)
