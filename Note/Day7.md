# Day7

函数、参数、返回值

## 函数

- 函数以关键字开头func，标志着函数的开始。
- 我们将函数命名为showWelcome。这可以是您想要的任何名称，但尽量使其易于记住 -  printInstructions()、displayHelp()等都是不错的选择。
- 函数体包含在左大括号和右大括号内，就像循环体和条件体一样。

提示：当函数完成时，您在函数内创建的任何数据都会自动销毁。

```swift
func printTimesTables(number: Int, end: Int) {
    for i in 1...end {
        print("\(i) x \(number) is \(i * number)")
    }
}

printTimesTables(number: 5, end: 20)
```

## 函数返回值
如果你想从函数返回你自己的值，你需要做两件事：

- 在函数的左大括号之前写一个箭头，然后写一个数据类型，它告诉 Swift 将发送回哪种数据。
- 使用return关键字发回您的数据。

```swift
/*
它创建了一个名为 的新函数areLettersIdentical()。
该函数接受两个字符串参数，string1和string2。
该函数表示它返回 a Bool，因此在某些时候我们必须始终返回 true 或 false。
在函数体内，我们对两个字符串进行排序，然后比较这两个==字符串——如果它们相同，则返回 true，否则返回 false。
*/

func areLettersIdentical(string1: String, string2: String) -> Bool {
    let first = string1.sorted()
    let second = string2.sorted()
    return first == second
}
func areLettersIdentical(string1: String, string2: String) -> Bool {
    return string1.sorted() == string2.sorted()
}
// 当一个函数只有一行代码时，我们可以return完全删除该关键字，Swift 仍然知道我们想要返回什么。
func areLettersIdentical(string1: String, string2: String) -> Bool {
    string1.sorted() == string2.sorted()
}
```
如果你的函数没有返回值，你仍然可以使用它return本身来强制函数提前退出

## 如何从函数返回多个值
如果您想要从函数返回多个值，您可以使用元组。元组是一种将多个值组合在一起的数据类型，它们可以包含任何类型的数据，甚至可以包含不同类型的数据。

```swift
func getUser() -> (firstName: String, lastName: String) {
    (firstName: "Taylor", lastName: "Swift")
}

let user = getUser()
print("Name: \(user.firstName) \(user.lastName)")

func getUser() -> (String, String) {
    ("Taylor", "Swift")
}

let user = getUser()
print("Name: \(user.0) \(user.1)")

let (firstName, lastName) = getUser()
print("Name: \(firstName) \(lastName)")

let (firstName, _) = getUser()
print("Name: \(firstName)")

```

元组与字典的区别
当您访问字典中的值时，Swift 无法提前知道它们是否存在。是的，我们知道它user["firstName"]会在那里，但 Swift 不能确定，所以我们需要提供一个默认值。
当您访问元组中的值时，Swift确实会提前知道它可用，因为元组表示它将可用。
我们使用user.firstName: 它不是字符串来访问值，因此也不可能出现拼写错误。
我们的字典可能包含数百个其他值"firstName"，但我们的元组不能 - 我们必须列出它将包含的所有值，因此它保证包含所有这些值，而不包含其他值。

## 自定义参数标签

我们写for number: Int：外部名称是for，内部名称是number，类型是Int。
当我们调用该函数时，我们使用参数的外部名称：printTimesTables(for: 5)。
在函数内部，我们使用参数的内部名称：print("\(i) x \(number) is \(i * number)")。


```swift
func printTimesTables(for number: Int) {
    for i in 1...12 {
        print("\(i) x \(number) is \(i * number)")
    }
}

printTimesTables(for: 5)
```
