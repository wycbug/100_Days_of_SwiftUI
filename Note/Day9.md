# Day9

闭包、摘要、Checkpoint 5

## 创建和使用闭包

```swift
let sayHello = {
    print("Hi there!")
}

sayHello()

// 闭包接收参数
let sayHelloTo = { (name: String) -> String in
    "Hello, \(name)!"
}

// 闭包示例
var greetCopy: () -> Void = greetUser
/*
空括号标记一个不带参数的函数。
箭头的含义正是创建函数时的含义：我们将声明函数的返回类型。
Void意思是“什么也没有”——这个函数什么也不返回。有时您可能会看到它写为()，但我们通常会避免这样做，因为它可能与空参数列表混淆。
*/
```

## 闭包作为参数

```swift
func travel(action: () -> Void) {
    print("I'm getting ready to go.")
    action()
    print("I arrived!")
}
drive() {
    print("I'm driving in my car")
}
// travel()接受一个闭包作为参数，该闭包没有参数和返回值。
travel(action: drive)
```

## 尾随闭包语法

```swift

func travel(action: () -> Void) {
    print("I'm getting ready to go.")
    action()
    print("I arrived!")
}
// 尾随闭包语法
travel() {
    print("I'm driving in my car")
}
// 如果函数只接受闭包参数，则可以省略括号
travel {
    print("I'm driving in my car")
}
```

## 闭包捕获值

```swift
func travel() -> (String) -> Void {
    var counter = 1

    return {
        print("\(counter). I'm going to \($0)")
        counter += 1
    }
}

let result = travel()
result("London")
```

## 接受函数作为参数

```swift
func travel(action: (String) -> Void) {
    print("I'm getting ready to go.")
    action("London")
    print("I arrived!")
}

travel { (place: String) in
    print("I'm going to \(place) in my car")
}
```

## 从函数返回闭包

```swift
func travel() -> (String) -> Void {
    return {
        print("I'm going to \($0)")
    }
}

let result = travel()

result("London")
```

## 摘要

- 您可以在 Swift 中复制函数，它们的工作方式与原始函数相同，只是它们会丢失外部参数名称。
- 所有函数都有类型，就像其他数据类型一样。这包括它们接收的参数及其返回类型，这可能Void也称为“无”。
- 您可以通过分配给常量或变量来直接创建闭包。
- 接受参数或返回值的闭包必须在大括号内声明，后跟关键字in。
- 函数能够接受其他函数作为参数。他们必须预先声明这些函数必须使用哪些数据，Swift 将确保遵循规则。
- 在这种情况下，您也可以传递一个闭包，而不是传递一个专用函数——您可以直接创建一个闭包。Swift 允许这两种方法都起作用。
- 当将闭包作为函数参数传递时，如果 Swift 可以自动计算出闭包内的类型，则无需显式写出该类型。返回值也是如此——如果 Swift 可以计算出它，则不需要指定它。
- 如果函数的一个或多个最终参数是函数，则可以使用尾随闭包语法。
- 您还可以使用简写参数名称，例如$0和$1，但我建议仅在某些情况下才这样做。
- 您可以创建自己的函数来接受函数作为参数，尽管在实践中了解如何使用它们比如何创建它们更重要。

## Checkpoint 5

任务：您已经遇到过sorted(), filter(), map(), 所以我希望您将它们放在一个链中 - 调用一个，然后调用另一个，然后背对背调用另一个，而不使用临时变量。

您的输入是这样的：

let luckyNumbers = [7, 4, 38, 21, 16, 15, 12, 33, 31, 49]
你的工作是：

过滤掉任何偶数
按升序对数组进行排序
将它们映射到格式为“7 is a lucky number”的字符串
打印结果数组，每行一项
提示：您可以在一行中完成此操作，但是如果您想将其分解为多行，则可以使用常量来存储中间结果。

提示：

- 您需要使用filter()、sorted()和map()函数。
- 运行函数的顺序很重要 - 如果您首先将数组转换为字符串，- sorted()则会进行字符串排序而不是整数排序。这意味着 15 将出现在 7 之前，因为 Swift 会将“15”中的“1”与“7”进行比较。
- 要链接这些函数，请使用luckyNumbers.first { }.second { }，显然将真正的函数调用放在那里。
- 您应该使用isMultiple(of:)来删除偶数。

```swift
let luckyNumbers = [7, 4, 38, 21, 16, 15, 12, 33, 31, 49]

let result = luckyNumbers.filter { $0 % 2 == 1 }.sorted().map { "\($0) is a lucky number" }

for item in result {
    print(item)
}
```
