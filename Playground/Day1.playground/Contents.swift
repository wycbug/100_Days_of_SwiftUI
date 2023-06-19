import UIKit


// 变量与常量
// var关键词，greeting变量名，"Hello, playground"变量值
var greeting = "Hello, playground"
// 变量可以更改
greeting = "Goodbye"

// let关键词，name常量名，"Tim"常量值
let name = "Tim"
// 常量不能更改
// name = "Timothy"  // 报错


// 字符串
// 单行字符串
var str1 = "Hello, playground"
// 多行字符串
var str2 = """
This goes
over multiple
lines
"""
// 多行字符串，但是第一行和最后一行都是空行
var str3 = """
This goes \
over multiple \
lines
"""
// 字符串长度
var str = "Hello, playground"
print(str.count)
// 字符串转大写
print(str.uppercased())
// 字符串转小写
print(str.lowercased())
// 字符串是否以某个字符串开头
print(str.hasPrefix("Hello"))
// 字符串是否以某个字符串结尾
print(str.hasSuffix("playground"))

// 整数
let score = 10
let reallyBig = 100000000
// 当您手写数字时，很难看清到底发生了什么,你可以使用下划线、_、来分隔数字。
// Swift 实际上并不关心下划线，所以如果你愿意，你可以这样写：
let reallyBig2 = 100_000_000
let reallyBig3 = 1_00__00___00____00
// 最终结果是一样的：reallyBig被设置为一个值为 100,000,000 的整数。

// 运算符
var counter = 10
counter = counter + 5
// 复合运算符
counter += 5
print(counter)
counter *= 2
print(counter)
counter -= 10
print(counter)
counter /= 2
print(counter)

// 整数调用函数
// 您可以调用isMultiple(of:)一个整数来确定它是否是另一个整数的倍数。
let number = 120
print(number.isMultiple(of: 3))

// 浮点数
// 创建浮点数，当你创建一个浮点数时，Swift 认为它是一个Double.
var pi = 3.141
// Swift 将小数视为与整数完全不同的数据类型，这意味着您不能将它们混合在一起。
let a = 1
let b = 2.0
// let c = a + b // 报错
let c = a + Int(b) // 如果需要，可以使用Int()将浮点数转换为整数
let c2 = Double(a) + b // 如果需要，可以使用Double()将整数转换为浮点数

// 一旦 Swift 决定了一个常量或变量保存的数据类型，它必须始终保存相同的数据类型。 例如，如果您创建了一个Double，那么您不能将它更改为Int，因为Swift 会认为您的代码有问题。
var name2 = "Nicolas Cage"
// name = 57 // 报错

// 浮点数调用函数
// 您可以使用rounded()将浮点数舍入为最接近的整数，或者使用rounded（to：）将其舍入为最接近的指定精度。
let number2 = 3.141
print(number2.rounded())
print(number2.rounded(.up))

