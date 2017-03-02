//
//  SymbolList.swift
//  Sequitur-Swift
//
//  Created by Jeet Patel on 3/2/17.
//  Copyright © 2017 Jeet. All rights reserved.
//


/**
 *	Implementation of the Symbol LL that is used to key track of both terminal and non-terminal symbols
 */
import Foundation


/**
	Represents a symbol in the sequence. Can be terminal or non-terminal.
*/
class JPSymbol {
	var isTerminal:Bool {
		get{
			return value != nil;
		}
	}
	
	/**
		What this symbol represents. Is NULL when the Symbol is a terminal symbol
	*/
	var representativeSymbol:JPSequence?
	
	/**
		The actual value of this symbol. Is nil when Symbol is non-terminal.
	*/
	var value:Character?
	/**
		ID that identifies the symbol. As each symbol is created, it is provided an ID that is one more than the ID of the previous symbol.
	*/
	var symID:UInt64
	
	/**
		Never should be called. Will cause issues.
	*/
	init() {
		fatalError("Must use Symbol.createSymbol()")
	}
	
	
	/**
		Returns a terminal symbol
		- Parameter value: The character the symbol should represent
	*/
	static func createSymbol(terminal value:Character) -> JPSymbol?{
		
		return nil
	}

	/**
		Returns a non-terminal symbol
		- Parameter sequence: The character the symbol should represent
	*/
	static func createSymbol(nonterm sequence:JPSequence) -> JPSymbol?{
		
		return nil
	}
	
}


struct JPSequenceNode {
	var symbol:JPSymbol
	var next:JPSymbol?
}
/**
	String of symbols, stored in a linked list manner. If a symbol is non-terminal, the symbol will to refer to the sequence it represents.
*/
class JPSequence {
	private var start:JPSequenceNode?
	
	init() {
		fatalError("Must use JPSequence.createSequence()")
	}
}
