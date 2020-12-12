//
//  day12.swift
//  Advent Of Code
//
//  Created by Valentin Cernuta on 12/12/2020.
//

import Foundation

enum Direction {
	case NORTH, SOUTH, EAST, WEST, LEFT, RIGHT, FORWARD
	
	func next(_ degrees: Int) -> Direction? {
		switch degrees {
			case 90:
				switch self {
					case .NORTH:
						return .EAST
					case .SOUTH:
						return .WEST
					case .EAST:
						return .SOUTH
					case .WEST:
						return .NORTH
					default:
						return nil
				}
			case 180:
				switch self {
					case .NORTH:
						return .SOUTH
					case .SOUTH:
						return .NORTH
					case .EAST:
						return .WEST
					case .WEST:
						return .EAST
					default:
						return nil
				}
			case 270:
				switch self {
					case .NORTH:
						return .WEST
					case .SOUTH:
						return .EAST
					case .EAST:
						return .NORTH
					case .WEST:
						return .SOUTH
					default:
						return nil
				}
			default: return nil
		}
	}
	
	func previous(_ degrees: Int) -> Direction? {
		switch degrees {
			case 90:
				switch self {
					case .NORTH:
						return .WEST
					case .SOUTH:
						return .EAST
					case .EAST:
						return .NORTH
					case .WEST:
						return .SOUTH
					default:
						return nil
				}
			case 180:
				switch self {
					case .NORTH:
						return .SOUTH
					case .SOUTH:
						return .NORTH
					case .EAST:
						return .WEST
					case .WEST:
						return .EAST
					default:
						return nil
				}
			case 270:
				switch self {
					case .NORTH:
						return .EAST
					case .SOUTH:
						return .WEST
					case .EAST:
						return .SOUTH
					case .WEST:
						return .NORTH
					default:
						return nil
				}
			default: return nil
		}
	}
	
	static func fromString(_ str: String) -> Direction? {
		switch str {
			case "N":
				return self.NORTH
			case "S":
				return self.SOUTH
			case "E":
				return self.EAST
			case "W":
				return self.WEST
			case "L":
				return self.LEFT
			case "R":
				return self.RIGHT
			case "F":
				return self.FORWARD
			default:
				return nil
		}
	}
}

final class Day12: Day {
	
	var input: String = """
	F12
	W1
	N3
	E3
	W3
	F93
	N2
	R90
	N4
	L180
	F13
	E2
	R270
	F16
	S4
	L90
	E1
	S4
	R180
	L90
	S2
	F89
	S3
	R90
	W1
	F2
	S2
	W3
	R180
	N2
	F41
	E3
	F74
	E1
	F20
	W3
	F32
	E1
	R90
	F19
	S4
	E1
	F41
	L180
	S1
	L90
	E5
	L90
	W2
	F45
	R180
	F17
	S3
	E2
	S1
	F27
	N5
	R180
	S1
	E5
	N1
	L270
	F60
	L180
	F18
	N2
	R180
	E4
	S4
	L180
	S5
	L270
	S1
	F32
	S5
	F83
	N2
	R180
	W1
	L180
	E2
	S3
	F94
	N3
	F82
	L90
	N2
	W5
	R180
	S4
	W3
	E1
	F81
	S3
	F45
	R90
	F51
	R180
	N1
	W5
	L90
	E3
	N5
	E3
	R180
	N3
	R180
	F87
	E4
	R90
	E4
	L180
	E4
	R90
	N1
	L270
	N3
	E3
	E3
	L180
	N1
	W5
	N3
	F85
	N1
	E2
	S3
	L90
	E5
	N3
	N1
	F74
	W2
	F79
	S1
	L90
	W5
	F88
	W4
	N1
	R180
	F94
	L90
	W5
	F79
	R180
	R270
	N3
	F83
	W3
	N3
	L90
	F33
	S5
	F93
	L90
	S1
	W3
	F24
	L90
	F80
	S2
	F86
	F7
	R90
	E1
	S3
	W3
	F23
	R90
	S1
	W4
	R90
	N4
	R270
	S1
	E1
	F20
	L270
	F31
	S2
	L180
	F41
	E3
	L90
	N3
	E3
	N1
	E5
	F27
	S3
	W2
	L90
	E5
	S1
	F9
	S3
	E2
	R90
	S5
	E2
	R180
	E3
	F32
	E3
	S1
	W1
	F39
	N4
	F5
	E5
	F26
	W4
	S1
	F54
	S5
	R90
	F50
	W4
	S1
	L90
	S5
	L90
	F2
	E5
	L90
	N1
	W3
	F75
	L90
	F85
	S2
	W4
	F93
	S4
	E3
	S2
	E4
	R90
	S3
	W1
	F94
	R90
	N3
	R270
	S2
	W3
	N5
	F1
	S1
	F32
	E2
	F17
	N4
	W2
	S4
	L90
	W2
	N2
	L180
	F94
	R90
	F78
	N3
	E3
	N3
	E4
	F37
	E5
	L180
	W2
	L180
	N2
	R270
	S2
	F28
	R90
	S1
	F15
	E1
	F50
	N3
	R90
	F14
	N4
	F80
	L90
	S5
	W1
	L90
	W5
	F100
	N1
	L90
	N5
	W2
	N1
	F76
	L180
	S3
	L180
	E1
	E5
	F1
	R90
	W4
	F95
	S2
	R90
	W2
	F29
	W2
	F47
	W5
	S5
	W4
	F58
	L90
	F22
	N1
	E4
	N4
	E2
	S5
	L180
	W4
	N2
	W3
	R90
	F76
	N1
	F41
	W5
	F48
	W1
	N4
	E2
	R180
	F79
	N1
	L90
	S4
	E2
	F86
	N2
	E1
	F5
	W4
	S2
	L90
	F3
	R270
	F43
	L180
	S5
	R90
	W5
	R180
	E4
	S3
	R90
	S2
	F41
	F70
	L270
	E4
	R90
	F18
	S4
	F88
	E2
	L90
	L270
	F56
	L90
	N1
	L90
	F7
	S3
	F36
	L90
	F2
	L90
	F2
	W4
	S4
	L90
	E5
	N2
	L90
	S4
	R90
	W1
	R90
	N2
	E3
	W2
	S4
	E4
	R90
	N5
	L90
	N4
	F55
	N3
	E1
	F80
	W2
	R90
	S2
	L90
	W5
	R90
	R90
	F87
	L270
	S5
	R270
	N5
	E5
	F10
	E1
	R180
	N1
	L90
	S3
	W1
	F18
	R90
	S3
	F89
	L90
	F42
	S3
	R180
	F92
	L90
	F48
	F11
	W2
	L180
	F27
	L180
	N3
	W1
	S2
	L90
	W1
	N1
	W4
	N1
	R90
	S2
	W5
	E1
	F74
	L180
	F48
	W3
	F3
	E3
	F74
	L270
	F38
	R180
	N2
	F83
	S1
	F78
	L90
	N4
	F43
	W3
	W2
	N1
	L90
	N2
	W4
	L90
	S5
	E5
	W1
	F83
	E5
	F70
	N2
	L90
	N2
	F66
	S2
	E2
	R90
	N1
	F2
	L90
	F15
	W3
	F10
	R90
	N3
	E5
	N5
	F57
	R90
	W2
	F83
	F91
	W5
	N2
	R90
	E4
	S2
	L90
	N2
	R90
	S1
	F49
	L90
	E3
	L180
	E2
	F98
	S1
	R180
	F23
	N2
	E2
	F8
	N2
	L90
	E2
	N4
	R90
	F29
	L90
	E5
	S3
	F92
	S5
	F68
	N1
	L90
	S5
	F73
	W4
	L180
	S1
	R180
	F74
	R90
	F27
	R180
	R90
	F88
	R270
	S1
	W1
	F73
	W1
	S5
	L90
	N5
	R90
	F50
	E2
	R90
	W3
	F23
	L90
	W2
	N1
	E2
	N2
	F56
	L90
	F22
	E5
	F46
	S2
	L180
	E4
	R90
	F10
	W2
	R90
	E5
	L270
	S4
	F55
	R90
	F17
	R90
	F8
	L180
	F25
	E4
	S2
	E1
	S1
	F35
	N5
	W5
	N3
	F79
	N1
	R90
	E1
	F32
	R90
	F87
	N2
	R180
	L180
	F38
	L90
	S1
	L270
	S5
	F63
	L180
	F50
	W1
	F23
	S2
	E2
	F30
	E3
	L90
	F79
	R180
	F90
	L180
	F81
	R90
	F72
	R180
	E4
	N3
	W3
	R90
	E5
	R90
	F81
	S3
	F66
	S5
	F83
	L90
	F15
	N5
	F16
	L270
	S3
	L270
	S3
	L90
	N5
	E2
	F60
	W2
	S4
	E1
	R180
	W2
	F28
	W4
	R90
	N3
	W3
	F48
	W2
	S5
	F2
	R90
	F47
	S5
	F11
	S5
	E2
	N2
	F93
	S2
	E4
	F23
	E4
	S1
	L90
	F87
	L180
	N4
	W5
	N5
	R180
	R90
	S5
	F65
	E5
	F51
	E5
	F65
	L90
	S4
	W3
	L180
	W1
	W2
	E4
	R270
	N4
	F86
	R90
	L90
	F9
	F76
	N4
	E4
	N4
	R90
	F40
	E5
	S1
	W3
	F22
	W2
	L90
	F51
	W1
	E1
	S2
	F27
	S5
	R90
	R270
	R90
	F71
	R90
	W4
	R90
	W1
	N4
	L90
	E2
	E1
	F61
	W1
	S5
	E2
	E4
	F10
	L90
	N2
	F3
	R90
	F7
	L90
	F56
	N1
	R270
	F70
	F71
	N3
	F96
	R90
	F56
	S4
	F96
	S5
	W5
	N4
	E2
	F90
	S5
	R180
	F81
	E1
	N4
	L90
	S2
	L180
	E5
	R90
	S4
	F60
	S4
	W3
	F3
	E5
	F54
	"""
	let parts: [String]
	
	init(data: String? = nil) {
		if let test = data {
			parts = test.toLines()
		} else {
			parts = input.toLines()
		}
	}
	
	func part1() -> Int {
		var vertical: Int = 0
		var horizontal: Int = 0
		var currentDirection: Direction = Direction.EAST
		
		let tuples = toArrayOfTuples()
		for tuple in tuples {
			switch tuple.0 {
				case .NORTH:
					vertical -= tuple.1
				case .SOUTH:
					vertical += tuple.1
				case .EAST:
					horizontal += tuple.1
				case .WEST:
					horizontal -= tuple.1
				case .LEFT:
					if let dir = currentDirection.previous(tuple.1) {
						currentDirection = dir
					}
				case .RIGHT:
					if let dir = currentDirection.next(tuple.1) {
						currentDirection = dir
					}
				case .FORWARD:
					if currentDirection == .NORTH {
						vertical -= tuple.1
					} else if currentDirection == .SOUTH {
						vertical += tuple.1
					} else if currentDirection == .WEST {
						horizontal -= tuple.1
					} else if currentDirection == .EAST {
						horizontal += tuple.1
					}
			}
		}
		
		return vertical +  horizontal
	}
	
	func part2() -> Int {
		return 0
	}
	
	private func toArrayOfTuples() -> [(Direction, Int)] {
		var dict: [(Direction, Int)] = []
		for item in parts {
			guard item.count >= 2 else { break }
			
			let str = item.toArray()
			if let dir = Direction.fromString(str[0]) {
				let num = str[1...]
				dict.append((dir, Int(num.joined())!))
			} else {
				break
			}
		}
		return dict
	}
	
}
