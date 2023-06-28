import UIKit

// Day7
// 函数、返回值、自定义参数标签

// 函数
func printTimesTables(number: Int, end: Int) {
    for i in 1...end {
        print("\(i) x \(number) is \(i * number)")
    }
}

printTimesTables(number: 5, end: 20)

// 函数返回值
/*
它创建了一个名为 的新函数areLettersIdentical()。
该函数接受两个字符串参数，string1和string2。
该函数表示它返回 a Bool，因此在某些时候我们必须始终返回 true 或 false。
在函数体内，我们对两个字符串进行排序，然后比较这两个==字符串——如果它们相同，则返回 true，否则返回 false。
*/

//func areLettersIdentical(string1: String, string2: String) -> Bool {
//    let first = string1.sorted()
//    let second = string2.sorted()
//    return first == second
//}
//func areLettersIdentical(string1: String, string2: String) -> Bool {
//    return string1.sorted() == string2.sorted()
//}
// 当一个函数只有一行代码时，我们可以return完全删除该关键字，Swift 仍然知道我们想要返回什么。
func areLettersIdentical(string1: String, string2: String) -> Bool {
    string1.sorted() == string2.sorted()
}

// 函数返回多个值
func getUser() -> (firstName: String, lastName: String) {
    (firstName: "Taylor", lastName: "Swift")
}

let user = getUser()
print("Name: \(user.firstName) \(user.lastName)")

//func getUser() -> (String, String) {
//    ("Taylor", "Swift")
//}

//let user = getUser()
//print("Name: \(user.0) \(user.1)")
//
//let (firstName, lastName) = getUser()
//print("Name: \(firstName) \(lastName)")
//
//let (firstName, _) = getUser()
//print("Name: \(firstName)")

// 自定义参数标签
func printTimesTables(for number: Int) {
    for i in 1...12 {
        print("\(i) x \(number) is \(i * number)")
    }
}

printTimesTables(for: 5)

