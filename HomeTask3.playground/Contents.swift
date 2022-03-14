import Darwin
//Создать массив из кортежей (Int, String).

let tuplesArray = [(2, "My name ist Valdemar"), (3, "Three"), (12, "Elizabeth"), (88, "Hello")]
var tuplesArrayWithSquaredNumbers : [(Int, String)] = []

//1. Пройти по элементам с помощью цикла for-in, создав Range от 0 до количества элементов массива, и возвести все Int в квадрат. (Лучше создать новый массив и результаты записать туда).

for index in 0..<tuplesArray.count {
    let squaring = powNumber(tuplesArray[index].0)
    
    tuplesArrayWithSquaredNumbers.append((squaring,tuplesArray[index].1))
}

func powNumber(_ number: Int, factor: Int = 2) -> Int {
    Int(pow(Double(number), Double(factor)))
}

//2.Пройти по элементам изначального массива с помощью цикла for-in, перебирая элементы, и записать в новый массив только четные элементы (не по порядку четные, а с четными Int’ами). (* Написать альтернативный вариант с функцией filter).

var evenNumberArrayFirstVariant: Array<Int>  = []
var evenNumberArraySecondVariant: Array<Int> = []
var evenNumberTuplesArray : [(Int, String)]  = []

//The first variant

for (number, _) in tuplesArray {
    if number % 2 == 0 {
        evenNumberArrayFirstVariant.append(number)
    }
}

//The second variant

for number in 0..<tuplesArray.count {
    if tuplesArray[number].0 % 2 == 0 {
        evenNumberArraySecondVariant.append(tuplesArray[number].0 )
    }
}

//The first varint with tuples array

for (values, names) in tuplesArray {
    if values % 2 == 0 {
        evenNumberTuplesArray.append((values, names))
    }
}

//The second variant with tuples array

for values in 0..<tuplesArray.count {
    if values % 2 == 0 {
        evenNumberTuplesArray.append((values, tuplesArray[values].1))
    }
}

// The variant with filter

let filterArray = tuplesArray.filter { $0.0 % 2 == 0 }

//С помощью функции sorted отсортировать изначальный массив по возрастанию строки кортежа.

let temporaryVariable = tuplesArray.sorted { $0.1.count < $1.1.count }
