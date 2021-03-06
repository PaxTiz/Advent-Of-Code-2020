//
//  day3.swift
//  Advent Of Code
//
//  Created by Valentin Cernuta on 05/12/2020.
//

import Foundation

func day3() {
	let input: String = """
	.#.....#..#..#....##.........#.
	...#...#.........#..#.#..#.....
	#.#...#.#....#.....#..#..##..##
	..#..#.#.#.....#..#..#..##.....
	.#..........#....####..##.#..#.
	....##.......#.#.....#.........
	....#......#....####.#.##......
	........##..........##......#..
	.........#........##..#.#.....#
	.#..##..........#..#...#..##.#.
	........#........#.....#....#.#
	..#.......#.###...#.......##...
	.##..##.#...#........#.........
	...#....#..#..#..##.......#..#.
	.#.#.##.##..##..#.#.....#.....#
	....#.........#........#....##.
	........#........#....###.#..#.
	........#....#......##.........
	.###.##.#.............##.......
	....#.........#...#.#.##..#....
	#.............#.#.#.#..#..#..##
	###...###.###..#........#......
	##..#.....#....##..##..........
	.......#...#....#...#...#.....#
	...#......###...##.###...#...#.
	#.......#...##..#.......#..#...
	.....##....#....#..#..#.#.##..#
	.........#....##.#.#..##.#.....
	.....#......#.#.#.....#.....#..
	..#..#...#.#...#.........##.#..
	.....#..#.................#.#..
	##.#....##........#......#.....
	#..#...##...#.#.#..#...........
	.#..####.....#......#.###......
	.#.......##............#....#..
	.#.........##..#.##...#.....###
	....##.........#.#...####...##.
	..#.......#......##.....#.#..#.
	...##....#..#..##....##...#.#.#
	.................#.............
	...#.##..#.##..............#...
	...#......#.........##........#
	..#.#..##...#.......#.#........
	.###.#.....#.##.##.#...#...#...
	.....#.##.....#..#......#..#...
	.....#.#...#........#..#..#..#.
	#...#.##.#....#................
	..#...#.#..#.....#.#.#.........
	#.#.###...#.....##........##...
	#..##.##....#..........##.#...#
	...#..#.#.###...##......#.#....
	.#..#........##...#......#.#.#.
	##........###....#.#....#......
	....#...........#.........#....
	#.#....#..#.....#.#....#.....#.
	........###.......#..#.#.#.#.#.
	..#....#.....#...............##
	.....#..##....#.#...####.......
	.#..#.....#..#.....#....#....#.
	..##....#...........#.#....#...
	..#.#......#..#.#..#.....###.#.
	...........................##..
	##.....#....#......###.#...#..#
	...#...#.........#..#..#....#..
	....#####.#.#.#....#..#........
	.##.#..#.#............###......
	##.#...##...##....#...#...##...
	..#.#.....#.......#..##..###.##
	#..##...........#.##.....#.##..
	#...#....#...#..##...#.#...#.#.
	.#..#...........###...#.#...#..
	.#.....#......#.#......#...#..#
	.#...##.##...............#....#
	..#.........#....#.............
	.#..##..#.#................#...
	..#.#.#.#.................#.#.#
	...#..#.#..#.#......#........#.
	##....#......###.#......#......
	..#....##.....#..#........#....
	.#.#....#...#.#.....###..#...#.
	.#..#...##.....#.#...#.....#.#.
	...#....#....##....##.....#....
	.......#...#...##..#.#.......#.
	.###..#..###.#.#.#.#.#.....##..
	....#.#......###.#....#....#..#
	##.....#.....##.#.....#....#...
	......#...##...#..#.#.....#....
	...#.........###.....#..##.....
	....#...#..#....#..#.........##
	.#........#..#.....#.##.#....#.
	.......#......#.##...##.#..#...
	#......#.......##..##..#.#.....
	..#.##..........#.#..#......#..
	#.....#.......#......#.........
	...##......##...........#.#....
	.#....#........#...#.#..#.....#
	.#...#...##......##...##...##.#
	.#.#.##.....##....#.#.#..#.....
	...#..#........#.....#.#.#####.
	#..#..#......#....##....##.....
	.#.............#....###.##.#...
	.#....#.......#.#.....#......##
	#..#.#.#........#...#..#...#...
	#.#.#.....#.......#.##..#.....#
	..#....#.....#...##.#...##.....
	......#..#.............###...#.
	..#...#.#....###...#...........
	.........#..#..#....#..#.......
	#....#.....#..#....#.#..##.....
	.#..#.#.....#...##.....##......
	.....####..#..#......#....##..#
	#.#....#....#.##.......#.#.....
	....#.#.............##..#.#...#
	....#.#.#.....##.....##..#...#.
	.#..#...#....#...#.#....#...#..
	.#..#.#.#.......#...#..........
	...##..#..#...##.....#.......#.
	..##...##.#..#.......#.........
	.##.#.......##...#...#......#.#
	##.#.#..#...#............#.....
	..#.##...##..#....##..#......#.
	...#..........#.....#.#........
	...#..#..#.......#.#.....##....
	##.............#.....#.##...#..
	#.#......#........#...#.##..#.#
	...#..#...##.#.#........#.#....
	#.....##...........#....#......
	...##....#..#.#...#........#...
	..##..####..#..#...............
	.#.#..#......#.##.........##.#.
	.##....#...##.#...#..##..#.....
	........#........#.###.#.#....#
	......##...#......#..#..#......
	..#.......#...#..##........#..#
	.#....###..###....###...##.#.##
	#.#....#..#.#...#.#...##...#...
	..#..##......#..#......####....
	.#....###.......#...##...#.....
	...#....#..#.....#..#...####.#.
	............#.####..##...#..##.
	.#..#.......#....#...#......#.#
	.......#.......#..#.#..........
	...#.#............#..#......#..
	..#...........#...##......#...#
	...##......#.........#.#...#.##
	.#..#..#..#......#...........#.
	....#.....#.###........#.......
	..##.#.#........#.#...##....#..
	.#.#........##....#...#......#.
	.......#.##..###...............
	#..#...##.....##........##....#
	...####........#...#.........##
	...#..............##..#........
	......#.....#....#.......#....#
	..###......#..##.....##....##..
	##...#.....#..#.#.#...#.....#..
	...#....#............#.........
	..#..##...#..#.........#.......
	.#.#.#...##..........#..###....
	.......##.#.#.#...#.#...#.....#
	..#..#..#..#...###.....#.##....
	.#.#.....#.....##.#..#...###..#
	.........#..##......##...##.#.#
	#.........##..#......#..#.#.#..
	.#..##.#.##......##........#...
	..#...#.....##..#......#.....##
	.#..#...#......#..#...#.....##.
	..#..##...#.....#.....#........
	....##..#....#.#....#......#.#.
	..#.......##..#..#.##.#..#...##
	...#..........#...#..##........
	..#............#.#......#......
	.#...##.......#...#.#........#.
	.#...#....#..#....#....#.#...#.
	......#..#.#..#..............#.
	.....#.##.#...............##.##
	.#...............#.....#..#...#
	.#..##.......#.#...#..#..#....#
	..#..###.##........##..........
	.#....#..##...#.#.........#....
	.......#.....#....###...##.#.#.
	##..#.#...##.##.##....##.#.###.
	#.#...........#..#.#...........
	....#..#..#..#...#....#.......#
	........##....#..#......##.#...
	.#.#..##...##...#....#..#.###..
	#..##....#..#...#.......##.....
	..###..#.###......#..####....#.
	.....#..#........##.#..#.......
	.#......##..............#.#.#..
	..#.#.......##...#....#.#.###..
	#..#..#...###..#...............
	......#..#.....#..#..#...#.....
	.#...#..........###..#..#.#....
	.#......##..#......#.....###..#
	.......#...#..#....###.....#...
	#....#.......###.##.....##....#
	..#.....#..##..#.........##....
	.....##....#.#......#..........
	....#...#...#......##.....##.#.
	........#.#.#......#...........
	.#....#...#...#....#.....#...#.
	..............#..##.#.....###.#
	.#......##.....##...#....#.....
	.............#.##......#.....#.
	.#....#.#............#.#..##...
	.#...##.......#..#...##....#...
	.#.....#..........#............
	#.#.#........#.....#..#....##..
	#....#.##......#...#...........
	........#.##.....#...##.....#..
	..#.##....#.##.#...#.#.#....#..
	......#.......####......#.#...#
	#...#.##.####......#.....##....
	.#..#....#.......#...##.....#..
	................#......#.##....
	###...##..#.#..........#....#.#
	#.#..#.....#..##.##.##...#...##
	..#.......#.......#..##..#..##.
	......#.##.......#..#.....#...#
	.##..##..#.#.......#..#......#.
	....##.#....#...##.#..#.....#.#
	..#..#.........###.#...........
	....#.......#....##......#....#
	..........#...#......#....#...#
	..#.#....###.....#..#.#.#..#...
	.....#...##..#.##........####..
	##.............#....##........#
	..#..........#..##.#...........
	##.#.......#.#....#......#.#...
	........####.....##.#.........#
	.....#...#.#.....#.##..##.#....
	........#...#.#.#.#...#......#.
	.#..#.#....#.#...##.....#..#...
	.....#.#............#.#.#......
	....##.#...#...#.##...##.......
	.........#.##.....#.......#...#
	...........###....#.#....#...#.
	.#..#.###......#..#............
	#...#..#......#.#...#......#...
	..##.#.#........#........##..##
	..#.#.##..##....#........#.#.#.
	...#........###......#.#.....#.
	#.#.#.##........#.#...#..#.....
	#..#...............#...#.#...#.
	.....##......#...#.....#..#....
	............#...#...#.##.#....#
	...#..#..#...##.#....#.#..#.#..
	##.#..#..............##........
	.#.#..#.#..#....##..#.#.##.##..
	......######....##.....#.......
	.#.......#..........#.#..#.#..#
	..........#.#......#...##......
	#..........#.#..#.............#
	...#...#..#....................
	....#...#.....#.....##.....#...
	..#....##.....#..#......#......
	.#.#.....#..##.##..........###.
	.#.##....#....#....#....#...#..
	..##.....................##.#..
	.....#..##....#.#.....##..#....
	.####...#...##..#.##...#..#....
	.........#.#...#.......###.....
	...#..#........#..#..##.....#..
	..#....#....#....###.....#.....
	......#....#..#.........#......
	#.#...#..#..#.#...#..#.#......#
	..........#..........#.#.##....
	.#..###..##..#....#.#.....#..#.
	.##......#..#.##...#.........#.
	...##...#....#.........#..#....
	....#..##........#.........#...
	.........##....#...#.#.....#..#
	.#..........##...#..#.#..##....
	#.......#...#...#............#.
	.....##.#.##.......#.......#...
	...........#...#.....###.....#.
	#..................#.##..##...#
	.........##.............#...#.#
	#.#.....##...#........###....##
	...##..#.##.....###.....#......
	..#...#.#..#......##.#.......#.
	.........##.#...........###..#.
	..#...#.....#...#.#.....#..#...
	.....##..#...#.#.#....#.....###
	..#.#....#..#..#..#....#.#...#.
	........##....#......#....#..#.
	.##..#.....#.#....#..#.###.....
	..............##.........#.#.#.
	.##....#.#..#..#...#..........#
	.....##.......#....#..#......#.
	...#.#....................#..##
	#.##..#.#...#...#....#.#....##.
	...#.#..#.###................#.
	.....##..#.##.#.#.........#.#..
	.................##..........#.
	..#......#........#.#....#.....
	#......##......#......###....#.
	....##....#..#..####......#...#
	.##.##.........#...#..#....#.#.
	.#..#....##...##..#...........#
	#...#......#...#...........#...
	...#...####.............##..#..
	.....#....##............##....#
	......##.#...##...........#.#..
	..#......##.....###.......#.###
	...#...#......#...##.#........#
	.#.........##.##......##.......
	....................#....#....#
	.#.#.#........##.#....#.....#..
	#.#.....####..#.........#.#.#..
	...####..#..............#.#....
	....#.#....#..........#....#...
	.#..#..#.#...#..#.#............
	.#.#.......##........##.....#..
	#.#.##..#.....##......##....#.#
	......#...#...#...#......#.....
	.........##..#.....#.####.#.#..
	.....#....#.###...#.###.#..#..#
	..#.#..#..#.......#.......##...
	.....#.........#......##.#....#
	..#.#.##....#.#...............#
	.....#..#....##......##..###...
	"""
	
	let forest: [[Forest]] = input.components(separatedBy: "\n").map({line in
		var arr: [Forest] = []
		let data = Array(line.trimmingCharacters(in: .whitespacesAndNewlines))
		for e in data {
			arr.append(String(e) == "." ? Forest.FIELD : Forest.TREE)
		}
		return arr
	})
	
	/// MARK : Count number of trees encounter in the forest by moving to 3 on right
	func part1() -> Int {
		var trees_meet = 0
		var column: Int = 0
		
		for line in forest {
			if line[column % line.count] == Forest.TREE {
				trees_meet += 1
			}
			column += 3
		}
		
		return trees_meet
	}
	
	/// MARK : Not done
	func part2() -> Int {
		let slopes: [[Int]] = [[1, 1], [3, 1], [5, 1], [7, 1], [1, 2]]
		var trees_meet: [Int] = Array(repeating: 0, count: slopes.count)
		var column: Int = 0
		
		for slope in slopes.indices {
			column = 0
			for line in forest.indices {
				if slopes[slope][1] != 1 {
					if line % 2 != 0 {
						continue
					}
				}
				if forest[line][column % forest[line].count] == Forest.TREE {
					trees_meet[slope] += 1
				}
				column += slopes[slope][0]
			}
		}
		
		print(trees_meet)
		return trees_meet.reduce(1, {a, b in a * b})
	}
	
	print("Part 1 : \(part1())")
	print("Part 2 : \(part2())")
}

enum Forest {
	case FIELD, TREE
}
