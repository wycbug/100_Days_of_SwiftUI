# Day6

循环：for、while、break、continue

## for

```swift
// for-in
// 指定次数循环
for index in 1...5 {
    print(index)
}

// 遍历数组
let names = ["Anna", "Alex", "Brian", "Jack"]
for name in names {
    print("Hello, \(name)!")
}

// 遍历字典
let numberOfLegs = ["spider": 8, "ant": 6, "cat": 4]
for (animalName, legCount) in numberOfLegs {
    print("\(animalName)s have \(legCount) legs")
}

// 遍历字符串
for character in "Hello" {
    print(character)
}

// 无限循环
for _ in 1... {
    print("Hello")
}

```

## while

为它提供一个条件，循环while将不断执行循环体，直到条件为 false。

```swift
var countdown = 10

while countdown > 0 {
    print("\(countdown)…")
    countdown -= 1
}

print("Blast off!")
```

## break

break语句会立即结束整个控制流的执行。当你想要更早的结束一个循环时，你都可以使用break语句。

```swift
/* 
这做了很多事情：

创建两个常量来保存两个数字。
创建一个整数数组变量，用于存储两个数字的公倍数。
从 1 计数到 100,000，将每个循环变量分配给i.
如果i是第一个和第二个数字的倍数，则将其附加到整数数组。
一旦达到 10 个倍数，就调用break退出循环。
打印出结果数组。
*/
let number1 = 4
let number2 = 14
var multiples = [Int]()

for i in 1...100_000 {
    if i.isMultiple(of: number1) && i.isMultiple(of: number2) {
        multiples.append(i)

        if multiples.count == 10 {
            break
        }
    }
}

print(multiples)
```

## continue

continue在该循环体内调用，Swift 将立即停止执行当前循环迭代并跳转到循环中的下一项

```swift
/*
这将创建一个文件名字符串数组，然后循环遍历每个文件名字符串并检查以确保它具有后缀“.jpg”——它是一张图片。continue与所有未通过该测试的文件名一起使用，以便跳过循环体的其余部分。
*/

let filenames = ["me.jpg", "work.txt", "sophie.jpg", "logo.psd"]

for filename in filenames {
    if filename.hasSuffix(".jpg") == false {
        continue
    }

    print("Found picture: \(filename)")
}
```

## 摘要

- 我们使用if语句来检查条件是否为真。您可以传递任何您想要的条件，但最终它必须归结为布尔值。
- 如果需要，您可以添加一个else块和/或多个else if块来检查其他条件。Swift 按顺序执行这些。
- 您可以使用 来组合条件||，这意味着如果任一子条件为真，则整个&&条件为真；或者 ，这意味着如果两个子条件都为真，则整个条件为真。
- 如果您多次重复相同类型的检查，则可以使用switch语句代替。这些必须始终是详尽的，这可能意味着添加默认情况。
- 如果您的案例之一switch使用fallthrough，则意味着 Swift 将随后执行以下案例。这并不常用。
- 三元条件运算符让我们检查 WTF：What、True、False。虽然一开始读起来有点困难，但你会发现它在 SwiftUI 中被大量使用。
- for循环让我们可以循环数组、集合、字典和范围。您可以将项目分配给循环变量并在循环内使用它，也可以使用下划线 ,_来忽略循环变量。
- while循环让我们可以制作自定义循环，这些循环将继续运行，直到条件变为 false。
- 我们可以分别使用continue或break跳过部分或全部循环项。

## Checkpoint 3

任务：
您的目标是从 1 循环到 100，对于每个数字：
如果是 3 的倍数，则打印“Fizz”
如果是 5 的倍数，则打印“Buzz”
如果是 3和5的倍数，则打印“FizzBu​​zz”
否则，只需打印号码即可。
提示：检查一个数字是否是另一个数字的倍数.isMultiple(of:)

```swift
for i in 1...100 {
    if i.isMultiple(of: 3) && i.isMultiple(of: 5) {
        print("FizzBuzz")
    } else if i.isMultiple(of: 3) {
        print("Fizz")
    } else if i.isMultiple(of: 5) {
        print("Buzz")
    } else {
        print(i)
    }
}
```
