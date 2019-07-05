import UIKit

/*
 1. 給一個 array ，裡面有 n 個 Int
 2. 給一個 d 值，要移動左邊幾個到右邊

 */

let a = [1, 2, 3, 4, 5]
let d = 3

func rotLeft(a: [Int], d: Int) -> [Int] {
  var tempArray: [Int] = []
  let index = d - 1
  print("index: \(index)")

  for i in index+1..<a.count {
    tempArray.append(a[i])
  }

  for j in 0...index {
    tempArray.append(a[j])
  }

  return tempArray
}

rotLeft(a: a, d: d)
