# Day5

条件判断：if、switch、三元运算符

## if

使用 if 来检测一个条件是否为真
单个条件判断：

```swift
if someCondition {
    print("Do something")
}
```

多个条件判断：

```swift
if age >= 18 {
    print("You can vote in the next election.")
} else {
    print("Sorry, you're too young to vote.")
}

let a = false
let b = true

if a {
    print("Code to run if a is true")
} else if b {
    print("Code to run if a is false but b is true")
} else {
    print("Code to run if both a and b are false")
}

```

## switch

Swift 的switch声明有两个地方不同：

所有switch语句都必须详尽无遗，这意味着必须在其中处理所有可能的值，这样您就不会意外地遗漏其中一个。
Swift 将执行第一个与您正在检查的条件匹配的情况，但不再执行。其他语言通常会继续执行所有后续情况中的其他代码，这通常是完全错误的默认操作。
default:是默认情况，如果所有情况都无法匹配，则将运行该情况。

```swift
switch forecast {
case .sun:
    print("It should be a nice day.")
case .rain:
    print("Pack an umbrella.")
case .wind:
    print("Wear something warm")
case .snow:
    print("School is cancelled.")
case .unknown:
    print("Our forecast generator is broken!")
}

let place = "Metropolis"

switch place {
case "Gotham":
    print("You're Batman!")
case "Mega-City One":
    print("You're Judge Dredd!")
case "Wakanda":
    print("You're Black Panther!")
default:
    print("Who are you?")
}

// 如果您明确希望Swift 继续执行后续案例，请使用fallthrough

let day = 5
print("My true love gave to me…")

switch day {
case 5:
    print("5 golden rings")
case 4:
    print("4 calling birds")
case 3:
    print("3 French hens")
case 2:
    print("2 turtle doves")
default:
    print("A partridge in a pear tree")
}
```

## 三元运算符

```swift
let age = 18
let canVote = age >= 18 ? "Yes" : "No"

let names = ["Jayne", "Kaylee", "Mal"]   
let crewCount = names.isEmpty ? "No one" : "\(names.count) people"
print(crewCount)

// 当您的条件用于检查相等性时，它会变得有点难以阅读
enum Theme {
    case light, dark
}

let theme = Theme.dark

let background = theme == .dark ? "black" : "white"
print(background)

```
