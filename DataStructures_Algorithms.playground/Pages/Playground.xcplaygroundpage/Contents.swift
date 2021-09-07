//: [Previous](@previous)

import Foundation

func increment(index:Int){
	guard index < 10 else { return }
	
	var i = index
	print(index)
	i += 1
	increment(index: i)
}

//increment(index: 0)

//sum of 0...val
func factorial(_ val:Int) -> Int{
	guard val > 0 else { return 0 }
	
	let sum = val + factorial(val-1)
	return sum
}

//10 9 8 7 6 5 4 3 2 1 0
let sum = factorial(10)
print(sum)



//: [Next](@next)
