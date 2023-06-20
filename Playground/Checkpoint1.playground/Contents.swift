import UIKit

/*
题目：
创建一个保持任何摄氏温度的常量。
通过乘以 9，除以 5，然后加 32，将其转换为华氏度。
为用户打印结果，同时显示摄氏度和华氏度值。
*/


// 创建一个常量，用于保存摄氏温度
let celsiusTemperature = 30.0
// 创建一个常量，用于保存华氏温度
let fahrenheitTemperature = (celsiusTemperature * 9 / 5) + 32

// 打印结果
print("摄氏温度：\(celsiusTemperature)℃")
print("华氏温度：\(fahrenheitTemperature)℉")

