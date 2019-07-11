import UIKit

var prices: [Int] = [4, 24, 45, 22, 435, 67, 74, 3, 23, 45, 11]
var k: Int = 230

func maximumToys(prices: [Int], k: Int) -> Int {
  let toys = prices.filter{ k > $0 }.sorted()
  var cost = 0

  for (index, item) in toys.enumerated() {
    if (cost + item) > k {
      return index
    }
    cost += item
  }

  return toys.count
}

maximumToys(prices: prices, k: k)
