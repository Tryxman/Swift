//Создать словарь, где ключ - название города/страны, значение - интересный факт и континент, где распорожен город/страна (подумайте, какой тип данных лучше использовать для значения).

import Foundation

var worldPlaceDictionary = ["Russia": ("The biggest country in the world", "Eurasia"),
                            "Portugal": ("One of the most safety country in the world","Europe"),
                            "Australia": ("The same as Europe but without migrants from near East","Australia"),
                            "Netherlands": ("Gaaga", "Europe"),
                            "Belarus": ("Misnk is one of the most clean city", "Europe"),
                            "Taiwan": ("The main center of microconductor manufactor", "Asia"),
                            "Japan": ("Neutral country", "Asia"),
                            "USA": ("Top 10 companies with the biggest capitalisation placed in USA", "North America")]

//1. Добавить новый элемент в словарь, поменять два существующих элемента в словаре, удалить один элемент из словаря.

worldPlaceDictionary["Minsk"] = ("1067 battle on Nemiga", "Europe") // add a new element

worldPlaceDictionary["Russia"]    = ("Putinka", "Eurasia")
worldPlaceDictionary["Australia"] = ("A1", "Australia") // change elements in dictionary

worldPlaceDictionary.removeValue(forKey: "Minsk")
worldPlaceDictionary["Netherlands"] = nil // remove value from the Dictionary

//2. Создать отдельный словарь с названием городов/стран с длиной более 6 букв из первоначального словаря.

var dictCitiesLongName = [String: (String, String)] ()

dictCitiesLongName = worldPlaceDictionary.filter({ $0.key.count > 6 })

//3.  Создать массив интересных фактов в формате (“название города/страны: факт”) из первоначального словаря, отсортировав их по длине строки по убыванию

var countriesFactsArray = [String]()

for (country, fact) in worldPlaceDictionary {
    countriesFactsArray.append("\(country): \(fact.0)")
    countriesFactsArray = countriesFactsArray.sorted(by: { $0.count > $1.count })
}

countriesFactsArray = worldPlaceDictionary.map { "\($0.key): \($0.value.0) "}.sorted(by: { $0.count > $1.count })

//4.* Отсортировать страны/города по континенту. Отсортированные данные должны лежать в одном объекте (сами придумайте, в каком). В итоге, у вас должна быть возможность получить все страны/города переданному континенту. (Лучше тут сразу функцию реализовать, которая будет возвращать страны по переданному континенту. Чтобы я потом не задавалась, вопросом, как мне потом страны получить из вашего объекта)

var sortedArrayByCountries = [String : [String]] ()

for key in worldPlaceDictionary {
    sortedArrayByCountries[key.value.1, default: []] += [key.key]
}
print(sortedArrayByCountries["Europe"]  ?? 0) /* Honestly, I don't understand what this does at all [key.value.1, default: [] += [key.key]
I found the answer to my question in the lecture, but it's still unclear to me. It seems to me that something with my head , simple things are difficult */

/*• Дан массив проверить, есть ли в массиве дубликаты.
 
(Желательно использовать map, reduce, filter, sorted)*/

let duplicatedNumbersArray = [1,2,43,5,6,3,5,6,6,3,3]
var duplicateEditedArray = [Int]()

//the first variant

if duplicatedNumbersArray.count == Set(duplicatedNumbersArray).count {
    print("No duplicates")
} else {
    print("Duplicates finded")
}

//the second variant

for value in duplicatedNumbersArray {
    if duplicateEditedArray.contains(value) {
        print("\(value) is duplicated")
    } else {
        duplicateEditedArray.append(value)
    }
}

//the third variant

let secondDuplicatedArray = duplicatedNumbersArray.reduce(into: [Int]()) {
    if !$0.contains($1) {
        $0.append($1)
    } else {
        print("Duplicates are : \($1)")
    }
}
