//: [Previous](@previous)

import Foundation
//		    0,1, 2,  3, 4, 5,  6,  7,  8,   9, 10
let ar = [ 1,5,15,17,19,22,24,29, 34,105,150]

func binarySearch(_ value:Int, in array:[Int]) -> Bool{
	var lowerBound = 0
	var upperBound = ar.count-1
	var middle = 0
	var found = false
	
	while lowerBound <= upperBound {
		//middle of the arr
		middle = (lowerBound + upperBound) / 2
		
		//print(lowerBound, upperBound, middle, array[middle])
		
		if array[middle] == value{
			found = true
			break
		}else if array[middle] < value{
			lowerBound = middle + 1
		}else{
			upperBound = middle - 1
		}
	}
	
	return found
}

let value = 5
let isFound = binarySearch(value, in: ar)
print(isFound)







//: [Next](@next)
