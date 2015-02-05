// Playground - noun: a place where people can play

import UIKit

let array:[Int] = [1,2,3,4]
let nsarray:NSArray = array;
let swiftarray:[Int] = array as [Int]
println(array.count)

let array1:[AnyObject] = [1,2,3,4,"5"]

//error
//array1 as [Int]

var array2 = [1,2,3,4]
var mutableArray = NSMutableArray(array: array2)
mutableArray.removeLastObject()
println(mutableArray)

array2[0...2]
array2[0..<2]

let range = NSRange(location: 1, length: 2)
let indexSet = NSIndexSet(indexesInRange: range)
println(nsarray.objectsAtIndexes(indexSet))

nsarray.containsObject("5")

contains(array, {$0 == 1})
find(array, 1)







