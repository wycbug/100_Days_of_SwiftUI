import UIKit


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
//for _ in 1... {
//    print("Hello")
//}

// while
var countdown = 10

while countdown > 0 {
    print("\(countdown)…")
    countdown -= 1
}

print("Blast off!")


// break
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

// continue
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

// Checkpoint 3
/*
 任务： 您的目标是从 1 循环到 100，对于每个数字： 如果是 3 的倍数，则打印“Fizz” 如果是 5 的倍数，则打印“Buzz” 如果是 3和5的倍数，则打印“FizzBu​​zz” 否则，只需打印号码即可。 提示：检查一个数字是否是另一个数字的倍数.isMultiple(of:)
 */
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
