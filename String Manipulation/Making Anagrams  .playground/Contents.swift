import UIKit

/*
 要移掉多少字，才會讓兩個字串相等

 $0 & $1
 var dics: [Character: Int] = [:]
 dics.forEach {  print($0) }
 ->
 (key: "c", value: 0)
 (key: "b", value: -1)
 (key: "e", value: 1)
 (key: "d", value: 1)
 (key: "a", value: -1)

 dics.forEach {  print($1) }
 ->
 0
 -1
 1
 1
 -1
 */

var a: String = "fcrxzwscanmligyxyvym"
var b: String = "jxwtrhvujlmrpdoqbisbwhmgpmeoke"

func makeAnagram(a: String, b: String) -> Int {
  var dics: [Character: Int] = [:]

  a.map { if let v = dics[$0] { dics[$0] = v+1 } else { dics[$0] = 1 }}
  b.map { if let v = dics[$0] { dics[$0] = v-1 } else { dics[$0] = -1 }}
  print(dics)

  // filter 值 !=0 -> 1, -1, 1, -1
  // abs 取絕對值 -> 1, 1, 1, 1
  // reduce + 起來
  return dics.filter { $1 != 0 }.map { abs($1) }.reduce(0, +)
}

makeAnagram(a: a, b: b)
