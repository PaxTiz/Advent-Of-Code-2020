//
//  Day8Tests.swift
//  Tests
//
//  Created by Valentin Cernuta on 08/12/2020.
//

import XCTest

class Day8Tests: XCTestCase {

    func testPart1() throws {
		let day: Day8 = Day8()
		XCTAssertEqual(2058, day.part1())
    }
	
	func testPart2WithSampleData() throws {
		let sample = """
		nop +0
		acc +1
		jmp +4
		acc +3
		jmp -3
		acc -99
		acc +1
		jmp -4
		acc +6
		"""
		let day: Day8 = Day8(data: sample)
		XCTAssertEqual(8, day.part2())
	}

}
