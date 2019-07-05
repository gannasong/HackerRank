import UIKit

//      [1, 2, 3, 4, 5]
let q = [2, 1, 5, 3, 4]

func minimumBribes(q: [Int]) -> Void {

  var birbe = 0

  for (i, x) in q.enumerated() {
    let index = i + 1 // index 的值，當 index = 0 值是 1

    if x - index > 2 { // 所以當 x 的值 - 當前位置的值只要 > 2 表示改變很多步
      print("Too chaotic")
      return
    }

    // @inlinable public func max<T>(_ x: T, _ y: T) -> T where T : Comparable
    // 比較大小

    // 5 進來 i = 2, x = 5, index = 3
    // 3     i = 3, x = 3, index = 4
    // x 為當前值
    // 1..<4
    for j in max(0, x - 2)..<index {
      if q[j] > x {
        birbe += 1
      }
    }
  }

  print(birbe)
}

minimumBribes(q: q)



