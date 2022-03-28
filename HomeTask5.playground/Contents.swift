//1. Дан массив целых чисел. Разделите его на два массива, где в первом массиве будут лежать четные числа, а во втором - нечетные.

import Foundation
import Darwin

let wholeNumberArray = [1, 2, 3, 4, 5, 6, 10, 14, 16, 19, 21, 34]

let evenNumbersArray = wholeNumberArray.filter({ $0 % 2 == 0 })
let oddNumbersArray  = wholeNumberArray.filter({ $0 % 2 != 0 })

//2. Дан массив опциональных строк. Посчитайте, сколько букв каждая буква встречается во всех словах.

let optionalStringsArray        = ["A", "Ба", "Ба", "Дельфин", nil]
var duplicatedSymbolsDictionaryIfLet = [String.Element : Int]()
var duplicatedSymbolsDictionaryGuard = [String.Element : Int]()
for string in optionalStringsArray {
    if let string = string {
        for character in string {
            duplicatedSymbolsDictionaryIfLet[character, default: 0] += 1
        }
    }
} // if let construction

for string in optionalStringsArray {
    guard let nonOptionalString = string else { continue }
    
    for character in nonOptionalString {
        duplicatedSymbolsDictionaryGuard[character, default: 0] += 1
    }
} // guard

/*3. Реализуйте математические функции (+, -, *, /, возведение в степень) для опциональных чисел (тип данных на ваш выбор). Используйте if let, guard let и ?? каждую хотя бы 1 раз. */

sumTwoValues(4, plus: nil)
subtractTwoValues(nil, minus: 4)
multiplyTwoValues(nil, by: 0)
divideTwoValues(3, by: nil)

func sumTwoValues<T: Numeric>(_ firstNumber: T?, plus secondNumber: T?) -> T {
    return (firstNumber ?? 0) + (secondNumber ?? 0 )
}

func subtractTwoValues<T: Numeric>(_ firstNumber: T?, minus secondNumber: T?) -> T {
    guard let secondNumber = secondNumber else {
        return firstNumber ?? 0
    }
    guard let firstNumber = firstNumber else {
        return secondNumber
    }
    return firstNumber - secondNumber
}

func multiplyTwoValues<T: Numeric>(_ firstNumber: T?, by secondNumber: T?) -> T {
    if let firstNumber = firstNumber, let secondNumber = secondNumber {
        return firstNumber * secondNumber
    }
    return 0
}

// Because of Numeric protocol limitation , for division using -> FloatingPoint
func divideTwoValues<T: FloatingPoint>(_ firstNumber: T?,  by secondNumber: T?) -> T? {
    return (firstNumber ?? 0) / (secondNumber ?? 0)
}

/*4.* Создайте функцию, которая проверяет является ли переданная строка палиндромом. Строка может быть как одним словом (mom) так и предложением (Too bad I hid a boot). В предложении вы должны игнорировать пробелы, большие или маленькие это буквы и знаки препинания при определении полиндрома.*/

let originalString      = ("Mama , : -- , -  a Amam")
let symbolsToExlclude   = ["!", " ", ",", ":", "?", "/", "(", ")", "-", "_", "+", "="]

let reductedString = originalString.lowercased().filter { !symbolsToExlclude.contains(String($0)) }

let isPalindrome = reductedString == String(reductedString.reversed())


var elimnetedMethod = [String]()
var newMethod  = ["a", "b", "c", "d", "e", "f", "g", "h", "i"]

for i in newMethod {
    elimnetedMethod.append(i)
}

print(elimnetedMethod)
