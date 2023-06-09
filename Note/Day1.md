# Day1 

课程链接(https://www.hackingwithswift.com/100/swiftui/1)

## 前言

SwiftUI 是一个强大的框架，用于为 iOS、macOS、tvOS 甚至 watchOS 构建用户交互应用程序。 但是没有编程语言就无法构建软件，因此 SwiftUI 背后是 Swift 本身：一种强大、灵活且现代的编程语言，您将在所有 SwiftUI 应用程序中使用它。

正如马克吐温曾经说过的那样，“取得成功的秘诀就是开始。” 好吧，你现在开始了，所以我们将深入了解 Swift 中的变量、常量和简单数据类型。

今天您有七个教程要完成。 如果您想更深入地研究每个主题，可以选择进一步阅读，但除非您愿意并且有时间，否则您不需要阅读它。 无论如何，有许多简短的测试可以帮助确保您理解关键概念。

我知道，我知道：除了下面链接的内容之外，继续观看更多视频并进行更多测试的诱惑很强烈，但请记住：不要急于求成！ 每天做一个小时比做间隔很大的块要好得多。

## 课程介绍

### 介绍：为什么选择使用Swift？

Swift 是一门相对年轻的语言，仅在 2014 年推出。这意味着它没有很多旧语言可能遭受的语言障碍，并且通常意味着只有一种方法可以解决特定问题。

与此同时，作为一种新的编程语言，Swift 充分利用了建立在旧语言成功（有时是错误）基础上的各种新思想。 例如，它使意外编写不安全代码变得困难，使编写清晰易懂的代码变得非常容易，并且它支持世界上所有语言，因此您永远不会看到那些困扰其他语言的奇怪字符错误。

Swift 本身只是一种语言，并不是为了在屏幕上绘制任何东西而设计的。 在使用 Swift 构建软件时，您将使用 SwiftUI：Apple 强大的框架，可以创建文本、按钮、图像、用户交互等等。 顾名思义，SwiftUI 是为 Swift 构建的——它实际上是为了利用该语言提供的强大功能和安全性而设计的，这使得构建真正强大的应用程序变得异常快速。

### 介绍：关于本课程（作者 Paul Hudson 对本课程的介绍）

自 2014 年以来，我一直在教人们编写 Swift，同年 Swift 发布，此时 Hacking with Swift 是世界上最大的致力于教授 Swift 的网站。

在此过程中，我学到了很多关于什么主题最重要、如何将主题组织成流畅一致的流程，以及最重要的是如何帮助学习者记住他们学过的主题。 本课程是所有这些学习的产物。

与我之前的作品不同，这本书并没有努力教给您 Swift 的方方面面，而是花更多的时间在最重要的功能子集上——您将在您构建的每个应用程序中一次又一次地使用这些功能。 是的，涵盖了一些高级语言功能，但我根据实用性挑选了它们。 读完本书后，您可能想继续学习一些更高级的功能，但我怀疑您更愿意忙于学习如何使用 SwiftUI。

本书的每一章都以文本和视频的形式提供，但它们涵盖的材料完全相同，因此欢迎您以最适合自己的方式学习。 如果您正在使用这些视频，您会注意到我有时会使用幻灯片介绍主题，有时会在 Xcode 中进行演示。 它可能会让人觉得重复，但它是有意为之的——有很多东西要学，如果你只看过一次，它就不会留在你的记忆中！

最后一件事：您可能会注意到有多少章节以“如何……”开头，这是有意为之的——本书旨在向您展示如何以实际操作的方式做事，而不是钻研理论。 理论很重要，你会遇到很多，因为你可以继续学习，但这里的重点是不懈地实践，因为我相信学习新事物的最好方法是自己尝试。

编程是一门艺术：不要把所有的时间都花在应该画画的时候削铅笔上。
Paul Hudson     @twostraws  

### 怎样跟随本课程进行学习

本书中展示了很多代码，我真的很想鼓励你自己尝试所有代码——将代码键入你的计算机，运行它并查看输出，然后进行一些实验以确保你理解它。

要运行本书中的代码，您应该已经从 Mac App Store 安装了 Xcode 14.0 或更高版本。 它是免费的，并且包含您需要遵循的所有内容。

我们将为本书中的所有代码使用 Swift Playground。 您可以通过启动 Xcode 创建一个，然后转到“文件”菜单并选择“新建”>“游乐场”。 当系统询问您要创建哪种游乐场时，请从 macOS 选项卡中选择空白，然后将其保存在您可以轻松访问的位置。

Playgrounds 就像一个小沙盒，您可以在其中轻松试用 Swift 代码，同时查看您的工作结果和代码。 您可以将一个 playground 用于您将要做的所有工作，或者为每一章创建一个新的 playground——做最适合您的事情。

提示：第一次在 playground 中运行代码可能需要几秒钟才能开始，但后续运行会很快。

## 知识点

### 1. 变量和常量

使用 var 创建变量，使用 let 创建常量。 变量可以在创建后更改，但常量不能。

``` swift
// var关键词，greeting变量名，"Hello, playground"变量值
var greeting = "Hello, playground"
// 变量可以更改
greeting = "Goodbye"

// let关键词，name常量名，"Tim"常量值
let name = "Tim"
// 常量不能更改
name = "Timothy"  // 报错
```

### 2. 字符串

创建字符串

``` swift
// 单行字符串
var str1 = "Hello, playground"
// 多行字符串
var str2 = """
This goes
over multiple
lines
"""
// 多行字符串，但是第一行和最后一行都是空行
var str3 = """
This goes \
over multiple \
lines
"""
```

字符串支持的函数

``` swift
// 字符串长度
var str = "Hello, playground"
print(str.count)
// 字符串转大写
print(str.uppercased())
// 字符串转小写
print(str.lowercased())
// 字符串是否以某个字符串开头
print(str.hasPrefix("Hello"))
// 字符串是否以某个字符串结尾
print(str.hasSuffix("playground"))
```

### 3. 整数

整数可以非常大——超过十亿、超过万亿、超过四万亿，甚至可以达到五千万亿，但它们也可以非常小——它们可以容纳高达五千万亿的负数。

``` swift
let score = 10
let reallyBig = 100000000
// 当您手写数字时，很难看清到底发生了什么,你可以使用下划线、_、来分隔数字。
// Swift 实际上并不关心下划线，所以如果你愿意，你可以这样写：
let reallyBig = 100_000_000
let reallyBig = 1_00__00___00____00
// 最终结果是一样的：reallyBig被设置为一个值为 100,000,000 的整数。

// 运算符
var counter = 10
counter = counter + 5
// 复合运算符
counter += 5
print(counter)
counter *= 2
print(counter)
counter -= 10
print(counter)
counter /= 2
print(counter)

// 整数调用函数
// 您可以调用isMultiple(of:)一个整数来确定它是否是另一个整数的倍数。
let number = 120
print(number.isMultiple(of: 3))

```

### 4. 浮点数

``` swift
// 创建浮点数，当你创建一个浮点数时，Swift 认为它是一个Double.
var pi = 3.141
// Swift 将小数视为与整数完全不同的数据类型，这意味着您不能将它们混合在一起。
let a = 1
let b = 2.0
let c = a + b // 报错
let c = a + Int(b) // 如果需要，可以使用Int()将浮点数转换为整数
let c = Double(a) + b // 如果需要，可以使用Double()将整数转换为浮点数

// 一旦 Swift 决定了一个常量或变量保存的数据类型，它必须始终保存相同的数据类型。 例如，如果您创建了一个Double，那么您不能将它更改为Int，因为Swift 会认为您的代码有问题。
var name = "Nicolas Cage"
name = 57 // 报错

// 浮点数调用函数
// 您可以使用rounded()将浮点数舍入为最接近的整数，或者使用rounded（to：）将其舍入为最接近的指定精度。
let number = 3.141
print(number.rounded()) // 四舍五入，结果为3
print(number2.rounded(.up)) // 向上舍入，结果为4
```
