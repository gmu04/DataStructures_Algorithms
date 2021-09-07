//: [Previous](@previous)

import Foundation


//sum of 0...val
func factorial(_ val:Int) -> Int{
	guard val > 0 else { return 0 }
	
	let sum = val + factorial(val-1)
	return sum
}

//10 9 8 7 6 5 4 3 2 1 0
//let sum = factorial(10);print(sum)



func factorialMultiply(_ val:Int) -> Int{
	if val == 0 { return 1 }
	
	let sum = val * factorialMultiply(val-1)
	return sum
}

//5 4 3 2 1 0
//let sum = factorialMultiply(5);print(sum)








//: [Next](@next)
