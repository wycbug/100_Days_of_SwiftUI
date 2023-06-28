# Day8

为函数提供默认值、处理函数中的错误、摘要、Checkpoint 4

## 为函数提供默认值

```swift
// 给函数参数提供默认值
func printTimesTables(for number: Int, end: Int = 12) {
    for i in 1...end {
        print("\(i) x \(number) is \(i * number)")
    }
}

printTimesTables(for: 5, end: 20)
printTimesTables(for: 8)
```

## 处理函数中的错误

事情总是会出错，例如当您想要读取的文件不存在时，或者当您尝试下载的数据由于网络故障而失败时。如果我们没有优雅地处理错误，那么我们的代码就会崩溃，所以 Swift 让我们处理错误——或者至少承认错误何时可能发生。

```swift
// 定义错误
enum PasswordError: Error {
    case short, obvious
}
// 示例
func checkPassword(_ password: String) throws -> String {
    if password.count < 5 {
        throw PasswordError.short
    }

    if password == "12345" {
        throw PasswordError.obvious
    }

    if password.count < 8 {
        return "OK"
    } else if password.count < 10 {
        return "Good"
    } else {
        return "Excellent"
    }
}
```

- 如果函数能够抛出错误而不自行处理错误，则必须将该函数标记为throws返回类型之前的位置。
- 我们没有具体指定该函数会抛出哪种错误，只是说明它可以抛出错误。
- 被标记为throws并不意味着该函数必须抛出错误，只是可能会抛出错误。
- 当需要抛出错误时，我们会写下throw我们的案例之一PasswordError。这会立即退出-该函数，这意味着它不会返回字符串。
- 如果没有抛出错误，该函数的行为必须与正常情况一样——它需要返回一个字符串。

实际编写代码时，我们需要使用do，try和catch关键字来处理错误。这看起来像这样：

```swift
let string = "12345"

do {
    let result = try checkPassword(string)
    print("Password rating: \(result)")
} catch {
    print("There was an error.")
}
```

## 摘要

总结回顾一下函数的知识点：

- 函数让我们可以通过分割代码块并为其命名来轻松重用代码。
- 所有函数均以单词 开头func，后跟函数名称。函数的主体包含在左大括号和右大括号内。
- 我们可以添加参数以使我们的函数更加灵活——用逗号分隔将它们一一列出：参数的名称，然后是冒号，然后是参数的类型。
- 您可以控制如何在外部使用这些参数名称，方法是使用自定义外部参数名称或使用下划线禁用该参数的外部名称。
- 如果您认为需要重复使用某些参数值，则可以为它们设置默认值，这样您的函数就可以编写更少的代码，并在默认情况下执行智能操作。
- 如果需要，函数可以返回一个值，但是如果您想从函数返回多条数据，则应该使用tuple。它们包含多个命名元素，但它在某种程度上受到字典所没有的限制- 您具体列出每个元素及其类型。
- 函数可以抛出错误：您创建一个枚举来定义您想要发生的错误，根据需要在函数内抛出这些错误，然后使用do、try和catch在调用站点处理它们。

## Checkpoint 4

任务：编写一个函数，接受 1 到 10,000 之间的整数，并返回该数字的整数平方根。这听起来很简单，但有一些问题：

您不能使用 Swift 的内置sqrt()函数或类似函数 - 您需要自己求平方根。
如果数字小于 1 或大于 10,000，您应该抛出“越界”错误。
您应该只考虑整数平方根——例如，不必担心 3 的平方根是 1.732。
如果找不到平方根，请抛出“无根”错误。

```swift
enum SquareRootError: Error {
    case outOfRange
    case noRoot
}

func squareRoot(of number: Int) throws -> Int {
    guard number >= 1 && number <= 10_000 else {
        throw SquareRootError.outOfRange
    }
    for i in 1...100 {
        if i * i == number {
            return i
        }
    }
    throw SquareRootError.noRoot
}
```

