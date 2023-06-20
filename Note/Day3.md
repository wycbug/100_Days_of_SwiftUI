# Day3

复杂数据类型：数组、字典、集合、枚举

## 数组

- 创建数组

```swift
var beatles = ["John", "Paul", "George", "Ringo"]
let numbers = [4, 8, 15, 16, 23, 42]
var temperatures = [25.3, 28.2, 26.4]
```

- 访问数组元素

```swift
print(beatles[0])
print(numbers[1])
print(temperatures[2])
```

- 添加数组元素

```swift
// 添加数组元素
beatles.append("Allen")
beatles.append("Adrian")
beatles.append("Novall")
beatles.append("Vivian")

// 注意：确保您的数组一次只包含一种类型的数据
// beatles.append(1) // error
```

- 删除数组元素

```swift
beatles.remove(at: 1)
beatles.removeLast()
beatles.removeFirst()
beatles.removeAll()
```

- 调用数组函数

```swift
// 数组长度
print(beatles.count)
// 数组是否为空
print(beatles.isEmpty)
// 数组是否包含某个元素
print(beatles.contains("John"))
// 对数组进行排序
print(beatles.sorted())
// 反转数组
print(beatles.reversed())
```

## 字典

- 创建字典

```swift
let employee2 = [
    "name": "Taylor Swift",
    "job": "Singer", 
    "location": "Nashville"
]
print(employee2["name"])
print(employee2["job"])
print(employee2["location"])

// 解包可选值
print(employee2["name", default: "Unknown"])
print(employee2["job", default: "Unknown"])
print(employee2["location", default: "Unknown"])
```

## 集合

集合类似于数组，只是不能添加重复的项目，并且它们不按特定顺序存储项目。

```swift
var people = Set(["Denzel Washington", "Tom Cruise", "Nicolas Cage", "Samuel L Jackson"])
// 集合会自动删除任何重复值，并且不会记住数组中使用的确切顺序。
print(people)

// 插入元素
people.insert("Tom Cruise")
print(people)
```

## 枚举

- 创建枚举

```swift
enum Weekday {
    case monday
    case tuesday
    case wednesday
    case thursday
    case friday
}

// 简化创建
enum Weekday {
    case monday, tuesday, wednesday, thursday, friday
}
```

- 使用枚举

```swift
// 使用枚举
var day = Weekday.monday
day = Weekday.tuesday
day = Weekday.friday

// 简化调用
day = .tuesday
day = .friday
```
