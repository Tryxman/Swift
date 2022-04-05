//
//  ViewController.swift
//  HomeTask6
//
//  Created by Aliaksei Palianskikh on 1.04.22.
//
//Создать класс Школа с параметром массив учеников. У ученика хранить имя, фамилию, номер класса, набор названий предметов с соответствующим им оценками (любой тип данных, который считаете наиболее подходящим). У ученика сделать конструктор со всеми параметрами, добавить дефолтные значения к некоторым из них. Написать функцию для ученика, выводящую информацию о студенте в формате
// “Фамилия Имя (Класс)
// предмет: оценка
// предмет: оценка”. Написать функцию для школы, которая выводит информацию о всех учениках. */

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let studentAliaksei = Student(name: "Aliaksei", surname: "Palianskikh", schoolClassNumber: "11-A", subjectAndGrade: (.Math, 3))
        let studentMariya = Student(name: "Anton", surname: "Bortnik")
        let studentKostya = Student(name: "Kostya", surname: "Varapai", schoolClassNumber: "11-B", subjectAndGrade: (.Math, 9))
        
        
        let school = School(students: [studentKostya, studentAliaksei, studentMariya])
        school.printSchoolInfo()
    }
    
}

class School {
    var students: [Student]
    
    init(students: [Student]) {
        self.students  = students
    }
    
    func printSchoolInfo() {
        for student in students {
            student.printStudentInfo()
        }
    }
}

class Student {
    var name: String
    var surname: String
    
    var schoolClassNumber: String
    
    var subjectAndGrade: (subject, Int)
    
    init(name: String, surname: String, schoolClassNumber: String = "4a", subjectAndGrade: (subject, Int) = (.Physics, 10)) {
        self.name = name
        self.surname = surname
        self.schoolClassNumber = schoolClassNumber
        self.subjectAndGrade = subjectAndGrade
    }
    
    func printStudentInfo() {
        let info = " Name: \(name)\n  Surname: \(surname)\n  Class: \(schoolClassNumber)\n  Subject and Grade: \(subjectAndGrade)"
        print(info)
    }
    
}

enum subject {
    case Math
    case Physics
    case Literature
    case Music
    case Chemistry
}
