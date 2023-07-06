# Day10

结构体，计算属性、属性观察器

## 结构体

示例：
这将创建一个名为 的新类型Album，其中包含两个名为title和的字符串常量artist，以及一个名为 的整数常量year。我还添加了一个简单的函数来总结三个常量的值。

```swift
// 创建结构体
struct Album {
    let title: String
    let artist: String
    let year: Int

    func printSummary() {
        print("\(title) (\(year)) by \(artist)")
    }
}
// 使用结构体
let red = Album(title: "Red", artist: "Taylor Swift", year: 2012)
let wings = Album(title: "Wings", artist: "BTS", year: 2016)

print(red.title)
print(wings.artist)

red.printSummary()
wings.printSummary()

```

任何更改属于结构体的数据的函数都必须用特殊的mutating关键字标记

```swift
truct Employee {
    let name: String
    var vacationRemaining: Int

    mutating func takeVacation(days: Int) {
        if vacationRemaining > days {
            vacationRemaining -= days
            print("I'm going on vacation!")
            print("Days remaining: \(vacationRemaining)")
        } else {
            print("Oops! There aren't enough days remaining.")
        }
    }
}
var archer = Employee(name: "Sterling Archer", vacationRemaining: 14)
archer.takeVacation(days: 5)
print(archer.vacationRemaining)
```

## 计算属性

结构可以有两种属性：存储属性是在结构实例内保存一段数据的变量或常量，计算属性在每次访问时动态计算属性的值。这意味着计算属性是存储属性和函数的混合：它们像存储属性一样访问，但像函数一样工作。

```swift
// 使用计算属性计算员工剩余假期
struct Employee {
    let name: String
    var vacationAllocated = 14
    var vacationTaken = 0

    var vacationRemaining: Int {
        vacationAllocated - vacationTaken
    }
}
```

提供提供一个getter和一个setter——分别是“读取的代码”和“写入的代码”

```swift
struct Employee {
    let name: String
    var vacationAllocated = 14
    var vacationTaken = 0

    var vacationRemaining: Int {
        get {
            vacationAllocated - vacationTaken
        }
        set {
            vacationAllocated = vacationTaken + newValue
        }
    }
}
```

## 属性观察器

Swift 允许我们创建属性观察器，它们是在属性更改时运行的特殊代码片段。它们采用两种形式：didSet观察者在属性刚刚更改时运行，willSet观察者在属性更改之前运行。

```swift
struct App {
    var contacts = [String]() {
        willSet {
            print("Current value is: \(contacts)")
            print("New value will be: \(newValue)")
        }

        didSet {
            print("There are now \(contacts.count) contacts.")
            print("Old value was \(oldValue)")
        }
    }
}

var app = App()
app.contacts.append("Adrian E")
app.contacts.append("Allen W")
app.contacts.append("Ish S")
```

## 自定义初始化器

初始化器是专门的方法，旨在准备要使用的新结构实例。
您也可以创建自己的结构体，只要遵循一条黄金法则：所有属性在初始化程序结束时都必须有一个值。

```swift
struct Player {
    let name: String
    let number: Int

    init(name: String) {
        self.name = name
        number = Int.random(in: 1...99)
    }
}

let player = Player(name: "Megan R")
print(player.number)
```
