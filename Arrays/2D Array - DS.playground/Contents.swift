import UIKit

func hourglassSum(arr: [[Int]]) -> Int {
  var maxSum = 0
  var tempSum = 0
  var isFirst = true

  for i in 0..<4 { // column
    for j in 0..<4 { // row
      tempSum = arr[i][j] + arr[i][j+1] + arr[i][j+2]
        + arr[i+1][j+1]
        + arr[i+2][j] + arr[i+2][j+1] + arr[i+2][j+2]

      if isFirst {
        maxSum = tempSum
        isFirst = false
      }

      if tempSum > maxSum {
        maxSum = tempSum
      }
    }
  }

  return maxSum
}
