// Playground - noun: a place where people can play

import Foundation

let string:String = "Hello World"
println(string.lowercaseString)

//与NSString的互转
var numstr:NSString = NSString(string: "123")
println((numstr as String).toInt()!)
let numstr1:String = numstr
println(numstr1)

//字符串拆分
let splitstr:NSString = NSString(string: "Apple,iOS,Swift,String")
let splitstrsarray = splitstr.componentsSeparatedByString(",")
for sub:AnyObject in splitstrsarray {
    println(sub)
}

let splitstr1:NSString = NSString(string: "Apple,iOS;Swift;String")
let splitstrarray1 = splitstr1.componentsSeparatedByCharactersInSet(NSCharacterSet(charactersInString: ",;"))
for sub1:AnyObject in splitstrarray1 {
    println(sub1)
}

let comment:NSString = NSString(string: "Hello, World! Welcome to Earth.")
println(comment.substringFromIndex(14))
println(comment.substringToIndex(13))
println(comment.substringWithRange(NSMakeRange(14,10)))

//查找字符串
let searchstr:NSString  = "Apple;iOS,Swift;String,NSMutableString"
let rangeForStr = searchstr.rangeOfString("String")
println("\(rangeForStr): \(searchstr.substringWithRange(rangeForStr))")
let rangeForStr1 = searchstr.rangeOfString("Cocoa")
if rangeForStr1.location == NSNotFound {
    println("404")
}else {
    println(rangeForStr1)
}
let rangeForStr2 = searchstr.rangeOfString("string", options: NSStringCompareOptions.CaseInsensitiveSearch)
println("\(rangeForStr): \(searchstr.substringWithRange(rangeForStr2))")




