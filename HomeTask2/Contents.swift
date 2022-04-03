//1. Универсальные функции сложения, вычитания, умножения и деления для всех типов чисел (перегрузка функций, одинаковые названия для функций, разные типы параметров)

import Darwin

//The first realization via generics
sumTwoValues(4, plus: 6)
subtractTwoValues(6.3, minus: 8.99)
multiplyTwoValues(5.545645, by: 8.54364564)
divideTwoValues(4.0, by: 2.2)

func sumTwoValues<T: Numeric>(_ firstNumber: T, plus secondNumber: T) -> T {
    return firstNumber + secondNumber
}

func subtractTwoValues<T: Numeric>(_ firstNumber: T, minus secondNumber: T) -> T {
    return firstNumber - secondNumber
}

func multiplyTwoValues<T: Numeric>(_ firstNumber: T, by secondNumber: T) -> T {
    return firstNumber * secondNumber
}

// Because of Numeric protocol limitation , for division using -> FloatingPoint
func divideTwoValues<T: FloatingPoint>(_ firstNumber: T,  by secondNumber: T) -> T {
    return firstNumber / secondNumber
}

//The second realization via functions overloading
//Sum realization via overloading

let firstSum: Int     = sumDigits(2, plus: 2)
let secondSum: Double = sumDigits(4, plus: 8)
let thirdSum: Int     = sumDigits(5.0, plus: 8.0)
let fourthSum: Double = sumDigits(5.5, plus: 5.6)


func sumDigits(_ firstNumber: Int, plus secondNumber: Int) -> Int {
    return firstNumber + secondNumber
}

func sumDigits(_ number: Double, plus: Double) -> Int {
    return Int(number + plus)
}

func sumDigits(_ number: Int, plus: Int) -> Double {
    return Double(number + plus)
}

func sumDigits(_ number: Double, plus: Double) -> Double {
    return number + plus
}

//Subtraction implementation via overloading

let firstSubtraction: Int     = subtractDigits(2, minus: 2)
let secondSubtraction: Double = subtractDigits(4, minus: 8)
let thirdSubtraction: Int     = subtractDigits(5.0, minus: 8.0)
let fourthSubtraction: Double = subtractDigits(5.5, minus: 5.6)

func subtractDigits(_ firstNumber: Int, minus secondNumber: Int) -> Int {
    return firstNumber - secondNumber
}

func subtractDigits(_ firstNumber: Double, minus secondNumber: Double) -> Int {
    return Int(firstNumber - secondNumber)
}

func subtractDigits(_ firstNumber: Int, minus secondNumber: Int) -> Double {
    return Double(firstNumber - secondNumber)
}

func subtractDigits(_ firstNumber: Double, minus secondNumber: Double) -> Double {
    return firstNumber - secondNumber
}

//Multiplication implementation via overloading

let firstMultiply: Int     = multiplyDigits(2, by: 2)
let secondMultiply: Double = multiplyDigits(4, by: 8)
let thirdMultiply: Int     = multiplyDigits(5.0, by: 8.0)
let fourthMultiply: Double = multiplyDigits(5.5, by: 5.6)

func multiplyDigits(_ firstNumber: Int, by secondNumber: Int) -> Int {
    return firstNumber * secondNumber
}

func multiplyDigits(_ firstNumber: Double, by secondNumber: Double) -> Int {
    return Int(firstNumber * secondNumber)
}

func multiplyDigits(_ firstNumber: Int, by secondNumber: Int) -> Double {
    return Double(firstNumber * secondNumber)
}

func multiplyDigits(_ firstNumber: Double, by secondNumber: Double) -> Double {
    return firstNumber * secondNumber
}

//Division implementation via overloading

let firstDivide: Int     = divideDigits(2, by: 2)
let secondDivide: Double = divideDigits(4, by: 8)
let thirdDivide: Int     = divideDigits(5.0, by: 8.0)
let fourthDivide: Double = divideDigits(5.5, by: 5.6)

func divideDigits(_ firstNumber: Int, by secondNumber: Int) -> Int {
    return firstNumber / secondNumber
}

func divideDigits(_ firstNumber: Double, by secondNumber: Double) -> Int {
    return Int(firstNumber / secondNumber)
}

func divideDigits(_ firstNumber: Int, by secondNumber: Int) -> Double {
    return Double(firstNumber / secondNumber)
}

func divideDigits(_ firstNumber: Double, by secondNumber: Double) -> Double {
    return firstNumber / secondNumber
}

//For this homework , it seems to me that i can use such maning for variables as : theFirstDivide , theFirstMultiply and etc.

//2. Вычислить сумму цифр четырехзначного числа


func digitsSum(number: Int) -> Int {
    if number > 0 {
        return number % 10 + digitsSum(number: number / 10)
    }

    return 0
}

var result = digitsSum(number: 9191)

//3. Функция сравнения строк

func compareStrings(_ firstString: String, with secondString: String) -> Bool {
    return firstString == secondString
}

compareStrings("azaz324", with: "azaz")

//4. Циклический вызов функций - поломать приложение

func infiniteCycle(_ text: String) {
    return infiniteCycle("Hello")
} 

//5. Функция возведения в степень с дефолтным параметром

func powNumber (_ number: Int, factor: Int = 3) -> Int {
    Int(pow(Double(number), Double(factor)))
}

powNumber(5)

//6*. Функция вычисления факториала числа (рекурсия)

func factorialCalculation (number: Int) -> Int {
    if number == 1 {
        return number
    } else {
        return number * factorialCalculation(number: number - 1)
    }
}

factorialCalculation(number: 5)
