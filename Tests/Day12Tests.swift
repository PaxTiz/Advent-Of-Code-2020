//
//  Day12Tests.swift
//  Tests
//
//  Created by Valentin Cernuta on 12/12/2020.
//

import XCTest

class Day12Tests: XCTestCase {
	
	let input: String = """
	F10
	N3
	F7
	R90
	F11
	"""
	
    func testPart1WithSample() throws {
		let day: Day12 = Day12(data: input)
		XCTAssertEqual(25, day.part1())
    }
	
	func testPart2WithSample() throws {
		let day: Day12 = Day12(data: input)
		XCTAssertEqual(286, day.part2())
	}
	
}
