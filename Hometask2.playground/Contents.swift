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

let theFirstSum: Int     = digitsSum(2, plus: 2)
let theSecondSum: Double = digitsSum(4, plus: 8)
let theThirdSum: Int     = digitsSum(5.0, plus: 8.0)
let theFourthSum: Double = digitsSum(5.5, plus: 5.6)


func digitsSum(_ firstNumber: Int, plus secondNumber: Int) -> Int {
    return firstNumber + secondNumber
}

func digitsSum(_ number: Double, plus: Double) -> Int {
    return Int(number + plus)
}

func digitsSum(_ number: Int, plus: Int) -> Double {
    return Double(number + plus)
}

func digitsSum(_ number: Double, plus: Double) -> Double {
    return number + plus
}

//Subtraction implementation via overloading

let theFirstSubtraction: Int     = digitsSubtraction(2, minus: 2)
let theSecondSubtraction: Double = digitsSubtraction(4, minus: 8)
let theThirdSubtraction: Int     = digitsSubtraction(5.0, minus: 8.0)
let theFourthSubtraction: Double = digitsSubtraction(5.5, minus: 5.6)

func digitsSubtraction(_ firstNumber: Int, minus secondNumber: Int) -> Int {
    return firstNumber - secondNumber
}

func digitsSubtraction(_ firstNumber: Double, minus secondNumber: Double) -> Int {
    return Int(firstNumber - secondNumber)
}

func digitsSubtraction(_ firstNumber: Int, minus secondNumber: Int) -> Double {
    return Double(firstNumber - secondNumber)
}

func digitsSubtraction(_ firstNumber: Double, minus secondNumber: Double) -> Double {
    return firstNumber - secondNumber
}

//Multiplication implementation via overloading

let theFirstMultiply: Int     = digitsMultiplication(2, by: 2)
let theSecondMultiply: Double = digitsMultiplication(4, by: 8)
let theThirdMultiply: Int     = digitsMultiplication(5.0, by: 8.0)
let theFourthMultiply: Double = digitsMultiplication(5.5, by: 5.6)

func digitsMultiplication(_ firstNumber: Int, by secondNumber: Int) -> Int {
    return firstNumber * secondNumber
}

func digitsMultiplication(_ firstNumber: Double, by secondNumber: Double) -> Int {
    return Int(firstNumber * secondNumber)
}

func digitsMultiplication(_ firstNumber: Int, by secondNumber: Int) -> Double {
    return Double(firstNumber * secondNumber)
}

func digitsMultiplication(_ firstNumber: Double, by secondNumber: Double) -> Double {
    return firstNumber * secondNumber
}

//Division implementation via overloading

let theFirstDivide: Int     = digitsDivision(2, by: 2)
let theSecondDivide: Double = digitsDivision(4, by: 8)
let theThirdDivide: Int     = digitsDivision(5.0, by: 8.0)
let theFourthDivide: Double = digitsDivision(5.5, by: 5.6)

func digitsDivision(_ firstNumber: Int, by secondNumber: Int) -> Int {
    return firstNumber / secondNumber
}

func digitsDivision(_ firstNumber: Double, by secondNumber: Double) -> Int {
    return Int(firstNumber / secondNumber)
}

func digitsDivision(_ firstNumber: Int, by secondNumber: Int) -> Double {
    return Double(firstNumber / secondNumber)
}

func digitsDivision(_ firstNumber: Double, by secondNumber: Double) -> Double {
    return firstNumber / secondNumber
}

//For this homework , it seems to me that i can use such maning for variables as : theFirstDivide , theFirstMultiply and etc.

//2. Вычислить сумму цифр четырехзначного числа

var sum = 0

func digitsSum(number: Int) -> Int {
    if number > 0 {
        sum += (number % 10)
        
        return digitsSum(number: number / 10)
    }

    return sum
}

var result = digitsSum(number: 9191)

//3. Функция сравнения строк

func stringCompare(_ firstString: String, with secondString: String) -> Bool {
    let stringCompareresult = true
    
    if firstString == secondString {
       return stringCompareresult
    } else {
        return !stringCompareresult
    }
}

stringCompare("azaz324", with: "azaz")

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
var factorialResult = 0

func factorialCalculation (number: Int) -> Int {
    if number == 1 {
        return number
    } else {
        return number * factorialCalculation(number: number - 1)
    }
}

factorialCalculation(number: 5)
