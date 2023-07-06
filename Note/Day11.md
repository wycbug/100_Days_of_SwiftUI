# Day11

访问控制、静态属性和方法、摘要、Checkpoint 6

## 访问控制

默认情况下，Swift 的结构体允许我们自由访问它们的属性和方法。
Swift 为我们提供了多种选择，让我们控制哪些属性和方法可以被访问，哪些不能。这称为访问控制。

- 用于private“不要让结构体之外的任何东西使用它”。
- 用于fileprivate“不要让当前文件之外的任何内容使用它”。
- 用于public“让任何人、任何地方都可以使用它”。

```swift
struct BankAccount {
    var funds = 0

    mutating func deposit(amount: Int) {
        funds += amount
    }

    mutating func withdraw(amount: Int) -> Bool {
        if funds >= amount {
            funds -= amount
            return true
        } else {
            return false
        }
    }
}
```

## 静态属性和方法

有时（只是有时）您希望将属性或方法添加到结构本身，而不是添加到结构的一个特定实例，这样您就可以直接使用它们。
如何创建和使用静态属性和方法

```swift
struct School {
    static var studentCount = 0

    static func add(student: String) {
        print("\(student) joined the school.")
        studentCount += 1
    }
}
// static请注意其中的关键字，这意味着studentCount属性和add()方法都属于School结构本身，而不是结构的各个实例。

School.add(student: "Taylor Swift")
print(School.studentCount)
```

如果要混合和匹配静态和非静态属性和方法，有两个规则：

- 静态属性和方法不能引用非静态属性和方法.
- 要从非静态代码访问静态代码，请始终使用类型的名称，例如School.studentCount. 您还可以使用Self来引用当前类型。
  
现在我们有了self 和 Self，它们的含义不同：self指的是结构体的当前值，指Self的是当前类型。

```swift
struct Employee {
    let username: String
    let password: String

    static let example = Employee(username: "cfederighi", password: "hairforceone")
}
```

现在，每当您需要Employee在设计预览中使用实例时，您都可以使用Employee.example，然后就完成了。

## 摘要：结构体

- struct您可以通过编写、为其命名，然后将结构体的代码放在大括号内来创建自己的结构体。
- 结构可以具有变量和常量（称为属性）和函数（称为方法）
- 如果方法尝试修改其结构的属性，则必须将其标记为mutating.
- 您可以将属性存储在内存中，或者创建计算属性，以便在每次访问它们时计算一个值。
- 我们可以将属性观察器附加didSet到willSet结构体内部的属性，这在我们需要确保属性更改时始终执行某些代码时很有帮助。
- 初始化器有点像专门的函数，Swift 使用其属性名称为所有结构生成一个初始化器。
- 如果需要，您可以创建自己的自定义初始值设定项，但必须始终确保结构中的所有属性在初始值设定项完成时以及调用任何其他方法之前都具有值。
- 我们可以根据需要使用访问权限将任何属性和方法标记为外部可用或不可用。
- 可以将属性或方法直接附加到结构，因此您可以使用它们而无需创建结构的实例。

## Checkpoint 6

任务：
创建一个结构来存储有关汽车的信息，包括其型号、座位数和当前档位，然后添加一个升档或降档的方法。考虑一下变量和访问控制：哪些数据应该是变量而不是常量，哪些数据应该公开？换档方法是否应该以某种方式验证其输入？

提示：
汽车的型号和座位数一旦生产就不会改变，因此它们可以是恒定的。但它当前的档位显然确实发生了变化，因此将其作为一个变量。
升档或降档应该确保这样的改变是可能的——例如，没有档位 0，并且可以安全地假设最多 10 个档位应该覆盖大多数（如果不是全部）汽车。
如果您使用private访问控制，您可能还需要创建自己的初始值设定项。（private这里是最好的选择吗？亲自尝试一下，看看你的想法！）
mutating请记住在更改属性的方法上使用关键字！

```swift
struct Car {
    let model: String
    let seats: Int
    var gear: Int

    init(model: String, seats: Int) {
        self.model = model
        self.seats = seats
        self.gear = 0
    }

    mutating func changeGear(to gear: Int) {
        if gear >= 0 && gear <= 10 {
            self.gear = gear
        }
    }
}
```
