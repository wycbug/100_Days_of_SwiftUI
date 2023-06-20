import Foundation

// MARK: Day4
// 类型注释
let playerName: String = "Roy"
var luckyNumber: Int = 13
let pi: Double = 3.141
var isAuthenticated: Bool = true
var albums: [String] = ["Red", "Fearless"]
var user: [String: String] = ["id": "@twostraws"]
var books: Set<String> = Set(["The Bluest Eye", "Foundation", "Girl, Woman, Other"])

// 当创建一个空数组时，需要指明类型
var teams: [String] = [String]()
// 使用类型注释，并将其设置为一个空数组
var cities: [String] = []
// 使用类型推断
var clues = [String]()
// 创建没有值的常量

let username: String
username = "@twostraws"
print(username)


// MARK: Checkpoint2
// 创建一个字符串数组
let albums2 = ["Red", "Fearless", "Red", "Fearless"]
// 打印数组中元素的个数
print(albums2.count)
// 使用集合去除重复元素
let albums3 = Set(albums2)
// 打印去重后的元素个数
print(albums3.count)


