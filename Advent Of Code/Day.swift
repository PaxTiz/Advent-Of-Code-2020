//
//  Day.swift
//  Advent Of Code
//
//  Created by Valentin Cernuta on 08/12/2020.
//

import Foundation

protocol Day {
	
	var input: String { get }
	
	init(data: String?)
	
	func part1() -> Int
	func part2() -> Int
	
}

extension Day {

	func run() -> Void {
		print("Part 1 : \(part1())")
		print("Part 2 : \(part2())")
	}
	
}
