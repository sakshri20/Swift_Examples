//: Playground - noun: a place where people can play

import UIKit

/*Integer and Double*/

var integer: Int = 10
var decimal: Double = 10.5
integer = Int(decimal)

let hourlyRate: Double = 19.5
let hourWorked: Int = 80
let totalCost: Double = hourlyRate * Double(hourWorked)

/*Type Inference: You can check the inffered type of a variable or constant in a playground by holding down the Option key and clicking on the variable or constant’s name.*/

let typeInference = 42

/*Ways to specify type of a variable or constant*/

let typeInferredDouble1 = 32
let typeInferredDouble2 = Double(32)
let typeInferredDouble3 = 32 as Double

/*Mini Excercise*/

let age1 = 42
let age2 = 21
let avg1 = (age1 + age2) / 2                          /* avg1 is inferred as Int because both age1 and age2 are inferred as Int and the arithmatic operation is performed on two Ints which results in an Int*/
let avg2 = (Double(age1) + Double(age2)) / 2         /* avg2 is inferred as Double because both age1 and age2 are  casted as double and the arithmatic operation is performed on two Doubles which results in a Double*/


/*Character and String*/

let characterA: Character = "a"
let characterDog: Character = "🐶"

let stringDog: String = "Dog"

/*Concatination*/

var message = "Hello " + "my name is "
let name = "Sakshi"
message += name
let exclamationMark: Character = "!"
message += String(exclamationMark)

/*Interpolation*/














