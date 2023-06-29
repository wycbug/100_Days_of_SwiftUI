let sayHello = {
    print("Hi there!")
}

sayHello()

// 闭包接收参数
let sayHelloTo = { (name: String) -> String in
    "Hello, \(name)!"
}

// 闭包示例
//var greetCopy: () -> Void = greetUser

// 闭包所谓参数
func travel(action: () -> Void) {
    print("I'm getting ready to go.")
    action()
    print("I arrived!")
}
func drive() {
    print("I'm driving in my car")
}
// travel()接受一个闭包作为参数，该闭包没有参数和返回值。
travel(action: drive)

// 尾随闭包语法

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

// 闭包捕获值
func travel() -> (String) -> Void {
    var counter = 1

    return {
        print("\(counter). I'm going to \($0)")
        counter += 1
    }
}

let result = travel()
result("London")

// 接收函数作为参数
func travel(action: (String) -> Void) {
    print("I'm getting ready to go.")
    action("London")
    print("I arrived!")
}

travel { (place: String) in
    print("I'm going to \(place) in my car")
}

// 从函数返回闭包
func travel() -> (String) -> Void {
    return {
        print("I'm going to \($0)")
    }
}

let result = travel()

result("London")


// Checkpoint 5
/*
 任务：您已经遇到过sorted(), filter(), map(), 所以我希望您将它们放在一个链中 - 调用一个，然后调用另一个，然后背对背调用另一个，而不使用临时变量。

 您的输入是这样的：

 let luckyNumbers = [7, 4, 38, 21, 16, 15, 12, 33, 31, 49] 你的工作是：

 过滤掉任何偶数 按升序对数组进行排序 将它们映射到格式为“7 is a lucky number”的字符串 打印结果数组，每行一项 提示：您可以在一行中完成此操作，但是如果您想将其分解为多行，则可以使用常量来存储中间结果。
 
*/
let luckyNumbers = [7, 4, 38, 21, 16, 15, 12, 33, 31, 49]

let result = luckyNumbers.filter { $0 % 2 == 1 }.sorted().map { "\($0) is a lucky number" }

for item in result {
    print(item)
}


