// Sum of separately whole and separately fractional parts of numbers
var a = 2.5
var b = 9.7
var c = 6.9
var d = 8.2

var arrayOfValues = [a,b,c,d]

var sumOfFractional: Double = 0
var sumOfWhole: Double      = 0

for i in arrayOfValues {
    let fractionalPart = i.truncatingRemainder(dividingBy: 1)
    let wholePart      = i.rounded(.towardZero)
    
    sumOfFractional += fractionalPart
    sumOfWhole      += wholePart
}
print ("Sum of whole part is \(sumOfWhole) \nSum of fractional part is \(sumOfFractional))")


// Odd or Even

var odd  = 7
var even = 4

var arrayOfDigits = [odd,even]

for i in arrayOfDigits {
    if i % 2 != 0  {
        print ("\(i) is Odd")
    } else {
        print ("\(i) is Even")
    }
}
