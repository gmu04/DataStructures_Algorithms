//: [Previous](@previous)

import Foundation

func bubbleSort(_ arr:[Int]) -> [Int]{
	guard !arr.isEmpty else { return [] }
	var ar = arr
	
	for _ in 0..<ar.count{
		for j in 0..<ar.count-1{
			if ar[j] > ar[j+1]{
				ar.swapAt(j, j+1)
			}
		}
	}
	
	return ar
}


var ar  = [3,2,6,4,78,41,90,299,23,6,32,85,13]
let sortedArray = bubbleSort(ar)

print("initial array: \(ar)")
print("sorted  array: \(sortedArray)")


//: [Next](@next)
