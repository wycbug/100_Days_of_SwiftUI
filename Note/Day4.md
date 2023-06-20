# Day4

复杂数据类型20：类型注释，小结，Checkpoint2

## 类型注释

类型推断：Swift 能够根据我们分配给常量或变量的内容来确定常量或变量保存的数据类型。
例如：

```swift
let surname = "Liu"
var score = 0
```

surname 是一个字符串，因为它被分配了一个字符串，而 score 是一个整数，因为它被分配了一个整数。

类型注释：如果您想明确告诉 Swift 一个常量或变量的数据类型，您可以使用类型注释，它是一个冒号，后面跟着一个空格，然后是数据类型。

```swift
let surname: String = "Liu"
var score: Int = 0
```

创建指定类型的变量示例：

```swift
let playerName: String = "Roy"
var luckyNumber: Int = 13
let pi: Double = 3.141
var isAuthenticated: Bool = true
var albums: [String] = ["Red", "Fearless"]
var user: [String: String] = ["id": "@twostraws"]
var books: Set<String> = Set(["The Bluest Eye", "Foundation", "Girl, Woman, Other"])
// 当创建一个空数组时，需要指明类型
var teams: [String] = [String]()
// 使用类型注释，并将其设置为一个空数组
var cities: [String] = []
// 使用类型推断
var clues = [String]()
```

创建没有值的常量

```swift
let username: String
// lots of complex logic
username = "@twostraws"
// lots more complex logic
print(username)
```

## 小结

- 数组让我们可以在一个地方存储很多值，然后使用整数索引读取它们。数组必须始终是专用的，以便它们包含一种特定类型，并且它们具有有用的功能，例如count、append()和contains()。
- 字典还可以让我们在一个地方存储很多值，但我们可以使用指定的键来读出它们。它们必须特化为具有一种特定类型的键和另一种类型的值，并且具有与数组类似的功能，例如contains()和count。
- 集合是在一个地方存储大量值的第三种方式，但我们无法选择它们存储这些项目的顺序。集合在查找它们是否包含特定项目方面非常有效。
- 枚举让我们在 Swift 中创建我们自己的简单类型，这样我们就可以指定一系列可接受的值，例如用户可以执行的操作列表、我们可以写入的文件类型或发送到的通知类型用户。
- Swift 必须始终知道常量或变量中的数据类型，并且主要使用类型推断来根据我们分配的数据来计算。但是，也可以使用类型注释来强制使用特定类型。

## Checkpoint2

任务：创建一个字符串数组，打印数组中的项目数以及数组中唯一项目的数量。

```swift
// 创建一个字符串数组
let albums2 = ["Red", "Fearless", "Red", "Fearless"]
// 打印数组中元素的个数
print(albums2.count)
// 使用集合去除重复元素
let albums3 = Set(albums2)
// 打印去重后的元素个数
print(albums3.count)
```
