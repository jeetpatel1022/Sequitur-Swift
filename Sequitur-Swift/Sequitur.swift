//
//  Sequitur.swift
//  Sequitur-Swift
//
//  Created by Jeet Patel on 3/2/17.
//  Copyright © 2017 Jeet. All rights reserved.
//

import Foundation

/**
	Used to call the sequitur on a number of sources.
*/
class Sequitur {
	var sequence:JPSequence?
	
	init(str:String) {
	}

	private func addDigram(str:String) {
		if str.characters.count != 2 {
			fatalError("Digram must be of size 2")
		}
	}
}
