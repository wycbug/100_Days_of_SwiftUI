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
