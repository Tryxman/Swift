//1. what digit is bigger ?

let height = 15
let width  = 20

if height > width {
    print("Height value: \(height). Height is bigger")
} else if height < width {
    print("Width value: \(width). Width is bigger")
} else {
    print("The values are the same")
}


/*2. Check if we take all that we need to go for a work
Нам надо идти на работу, но нужно проверить все ли мы взяли или нет?
Нам точно нужны ключи документы и ручка, но из еды нам надо яблоко или апельсин.
Для решения этой задачи нам помогут логические операторы **`|| &&`**.
*/

let hasKey       = true
let hasDocuments = true
let hasPen       = true
let takenApple   = false
let takenOrange  = true
var shouldGoToWork : Bool

if hasKey && hasDocuments && hasPen && (takenApple || takenOrange) {
    shouldGoToWork = true
    print("Go to the work Buddy!")
} else {
    shouldGoToWork = false
    print("You forgot something at home , come home ")
}

/* 3. Реализовать данные условия для числа:
 
 1. Если число делится без остатка на 5 выводим сообщение Fiz
 2. Если число делится без остатка на 3 выводим сообшение Buz
 3. Если число делится без остатка и на 3 и на 5 выводим сообшение FizBuz
 */

let anyDigit = 22

if  anyDigit % 5 == 0 && anyDigit % 3 == 0{
    print("FizBuz")
} else if anyDigit % 3 == 0 {
    print("Buz")
} else if anyDigit % 5 == 0 {
    print("Fiz")
} else {
    print("Fizi bizi not applicable")
}


/*4.  Написать программу, которая выполняет следующие операции:
 
 - Создайте переменную для возраста, если он больше 18, то выводит сообщение - `You are allowed to drink`.
 - Если меньше, то выводит сообщение - `Drink juice`.
 - Добавить условие, что если возраст от 16-18, выводим сообщение - `Think about a way how you can look like an adult`.*/

var age = 15

if age > 18 {
    print("You are allowed to drink")
} else if age >= 16 && age <= 18 {
    print("Think about a way how you can look like an adult")
} else  {
    print("Drink juice")
}


/*5 Напишем программу для туристического терминала. Создайте переменную, которая будет хранить сторону света, куда пользователь бы хотел отправиться. Мы должны вывести в консоль сообщение из списка. Если пользователь ввел неверные данные, выведите сообщение в консоль чтобы он попробовал еще раз.
 */

let theSideOfWorld = "south"

switch theSideOfWorld {
case "south":
    print("There's pretty hot there")
    
case "north":
    print("There's pretty cold there")
    
case "west":
    print("There're opportunities there")
    
case "east":
    print("There's a different culture there")
    
default:
    print("Try again")
    
}

