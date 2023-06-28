// 给函数参数提供默认值
func printTimesTables(for number: Int, end: Int = 12) {
    for i in 1...end {
        print("\(i) x \(number) is \(i * number)")
    }
}

printTimesTables(for: 5, end: 20)
printTimesTables(for: 8)

// 处理函数中的错误
// 定义错误
enum PasswordError: Error {
    case short, obvious
}
// 示例
func checkPassword(_ password: String) throws -> String {
    if password.count < 5 {
        throw PasswordError.short
    }

    if password == "12345" {
        throw PasswordError.obvious
    }

    if password.count < 8 {
        return "OK"
    } else if password.count < 10 {
        return "Good"
    } else {
        return "Excellent"
    }
}

// do try catch
let string = "12345"

do {
    let result = try checkPassword(string)
    print("Password rating: \(result)")
} catch {
    print("There was an error.")
}

// Checkpoint 4
enum SquareRootError: Error {
    case outOfRange
    case noRoot
}

func squareRoot(of number: Int) throws -> Int {
    guard number >= 1 && number <= 10_000 else {
        throw SquareRootError.outOfRange
    }
    for i in 1...100 {
        if i * i == number {
            return i
        }
    }
    throw SquareRootError.noRoot
}

