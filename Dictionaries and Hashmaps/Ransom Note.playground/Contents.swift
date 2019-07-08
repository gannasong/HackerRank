import UIKit

/*
 test case time out lol~
 */

//func checkMagazine(magazine: [String], note: [String]) -> Void {
//  var tempArray: [String] = []
//
//  for i in 0..<note.count {
//    magazine.forEach { (word) in
//      if word == note[i] {
//        tempArray.append(word)
//      }
//    }
//  }
//
//  if Set(tempArray).count == note.count {
//    print("Yes")
//  } else {
//    print("No")
//  }
//}

let magazine: [String] = ["two", "times", "three", "is", "not", "four"]
let note: [String] = ["two", "times", "two", "is", "four"]

/*
 1.https://developer.apple.com/documentation/swift/array/3126956-reduce
 2.使用到 reduce(into: )
 */
func checkMagazine(magazine: [String], note: [String]) -> Void {
  guard note.count <= magazine.count else {
    print("No")
    return
  }

  var magazineDict = magazine.reduce(into: [:]) { (counts, word) in
    counts[word, default: 0] += 1
  }

  let notedict = note.reduce(into: [:]) { (counts, word) in
    counts[word, default: 0] += 1
  }
  print("magazineDict: \(magazineDict)")
  print("notedict: \(notedict)")

  for (key, value) in notedict {
    print("key: \(key), value: \(value)")
    guard let word = magazineDict[key], word >= value else {
      print("No")
      return
    }
  }

  print("Yes")
}

checkMagazine(magazine: magazine, note: note)


