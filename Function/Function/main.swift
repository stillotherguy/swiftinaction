//
//  main.swift
//  Function
//
//  Created by Ethan on 15/1/31.
//  Copyright (c) 2015年 Ethan. All rights reserved.
//

import Foundation

//定义与使用
func isSell(commodity: String, haha: String="haha") -> Bool {
    var selled:Bool = true
    return selled
}

var acommName = "PS4"

if isSell(acommName) {
    println("\(acommName) is selled")
}

//形参与返回值
func setFormEnable(bEnable: Bool) -> (Int,Bool) {
    var formxPosition = 0
    var isEnable = true
    
    return (formxPosition, isEnable)
}

//外部形参  名字被给定之后必须显式调用
func outName(outName localName: Int) -> Bool {
    return false
}

outName(outName: 1)

func outInNameSame(#localName: Int) -> Bool {
    return false
}

outInNameSame(localName: 2)

//可变参数，只能放最后
func changeableParam(numbers: Double...) -> Double {
    var count:Double = 0
    for number in numbers {
        count += number
    }
    
    return count
}

changeableParam(1.0, 2.02, 3.33)

//默认参数都是let常量的值类型

func constantParam(var str: String) {
    //不加var会报错
    str = "222";
}

var inoutInt = 0

func inoutParam(inout param: Int){
    param = 1
}
//1
println(inoutParam(&inoutInt))


//函数赋值
var funcParam:(Int)->Int = inoutParam

let anotherFuncParam = funcParam

//嵌套函数
func outterFunc(name: String) -> String {
    func inner(innerName:Int) -> String {
        //捕获上下文常量或变量
        return String(innerName*2) + name
    }
    
    return inner(1)
}

outterFunc("Ethan")

//闭包,闭包或函数都是引用类型
let names = ["zhangsan", "lisi", "wangwu", "zhaoliu"]

names.sorted({(s1: String, s2: String) -> Bool in
    return s1 < s2
})

//简洁版
names.sorted({s1, s2 in s1<s2})
//更简洁版
names.sorted({$0<$1})
//最简洁版
names.sorted(<)

//trailing闭包
func trailingFunc(str: String, closureFunc: (String s1, String s2) -> String){
    return str + closureFunc
}

trailingFunc("haha"){
    return $0 + $1
}