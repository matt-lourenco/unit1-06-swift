//
//  diceRoll.swift
//  Rolls a dice with an inputted number of sides and prints the output.
//
//  Created by Matthew Lourenco on 13/02/18.
//  Copyright © 2018 MTHS. All rights reserved.
//

import Foundation

var input: String?
var numberOfSides: Int = 0

func RollDie(maxValue: Int) {
	//Generate random number and print to console
	srand(UInt32(time(nil)))
	var roll: Int = Int(random()%(maxValue) + 1)
	print(roll)
}

//Get user input and run the RollDie function
while true {
	print("Enter the number of sides on the die: ")
    input = readLine(strippingNewline: true)
	if let check = Int(input!), check != nil {
		numberOfSides = Int(input!)!
		break
	} else {
		print("Please enter an integer")
	}
}

RollDie(maxValue: numberOfSides)