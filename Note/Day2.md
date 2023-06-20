# Day2

## 知识点

### 1. 布尔值

``` swift
// 布尔值
let goodDogs = true
var gameOver = false
print(gameOver)
let filename = "paris.jpg"
print(filename.hasSuffix(".jpg"))

let number = 120
print(number.isMultiple(of: 3))

// 布尔值取反
var isAuthenticated = false
isAuthenticated = !isAuthenticated
print(isAuthenticated)
isAuthenticated = !isAuthenticated
print(isAuthenticated)

gameOver.toggle()
print(gameOver)
```

### 2. 字符串操作

``` swift
// 字符串连接
let firstPart = "Hello, "
let secondPart = "world!"
let greeting = firstPart + secondPart

let people = "Haters"
let action = "hate"
let lyric = people + " gonna " + action
print(lyric)

// 字符串插值
let name = "Taylor"
let age = 26
let message = "Hello, my name is \(name) and I'm \(age) years old."
print(message)
print("5 x 5 is \(5 * 5)")
```

### 3. 简单数据类型小结

我们在前面的章节中介绍了很多关于数据的基础知识，所以让我们回顾一下：

- Swift 允许我们使用 let 创建常量，使用 var 创建变量。
- 如果你不打算改变一个值，确保你使用 let 这样 Swift 可以帮助你避免错误。
- Swift 的字符串包含文本，从短字符串到整篇小说。 它们适用于表情符号和任何世界语言，并具有有用的功能，例如计数和大写 ()。
- 您可以通过在开头和结尾使用双引号来创建字符串，但是如果您希望字符串跨越多行，则需要在开头和结尾使用三个双引号。
- Swift 称它的整数为整数，它们可以是正数也可以是负数。 它们还具有有用的功能，例如 isMultiple(of:)。
- 在 Swift 中，十进制数称为 Double，是双长度浮点数的缩写。 这意味着如果需要它们可以容纳非常大的数字，但它们也不是 100% 准确的——当需要 100% 的精度时，例如在处理金钱时，你不应该使用它们。
- 有许多内置的算术运算符，例如 +、-、* 和 /，以及特殊的复合赋值运算符，例如直接修改变量的 +=。
- 您可以使用布尔值表示简单的 true 或 false 状态，可以使用 ! 运算符或调用 toggle()。
- 字符串插值使我们能够以一种流线型、高效的方式将常量和变量放入我们的字符串中。

## Checkpoint 1

您的目标是编写一个 Swift 游乐场：

创建一个保持任何摄氏温度的常量。
通过乘以 9，除以 5，然后加 32，将其转换为华氏度。
为用户打印结果，同时显示摄氏度和华氏度值。

``` swift
// 创建一个常量，用于保存摄氏温度
let celsiusTemperature = 30.0
// 创建一个常量，用于保存华氏温度
let fahrenheitTemperature = (celsiusTemperature * 9 / 5) + 32

// 打印结果
print("摄氏温度：\(celsiusTemperature)℃")
print("华氏温度：\(fahrenheitTemperature)℉")
```
