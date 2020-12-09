//
//  Day9Tests.swift
//  Tests
//
//  Created by Valentin Cernuta on 09/12/2020.
//

import XCTest

class Day9Tests: XCTestCase {
	
	let sample: String = """
	35
	20
	15
	25
	47
	40
	62
	55
	65
	95
	102
	117
	150
	182
	127
	219
	299
	277
	309
	576
	"""

    func testPart1WithSampleData() throws {
		let day: Day9 = Day9(data: sample, count: 5)
		XCTAssertEqual(127, day.part1().0)
    }
	
	func testPart2WithSampleData() throws {
		let day: Day9 = Day9(data: sample, count: 5)
		XCTAssertEqual(62, day.part2())
	}

}
