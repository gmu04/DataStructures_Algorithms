//: [Previous](@previous)

import Foundation

//LIFO - last in first out

struct Stack<T>{
	private(set) var data = [T]()
	var count:Int { data.count }
	
	mutating func push(_ value:T){
		//data.insert(value, at: 0)
		
		//2nd way
		data.append(value)
	}
	
	mutating func pop() -> T?{
		/*
		defer {
			if data.indices.contains(0){ data.remove(at: 0) }
		}
		return data.first
		*/
		//2nd way
		return data.popLast()
	}
}

var stack = Stack<Int>()
stack.push(1);stack.push(22);stack.push(11);stack.push(37); print(stack.data, ", item count: \(stack.count)")
print(stack.pop(), stack.data)
print(stack.pop(), stack.data)
print(stack.pop(), stack.data)
print(stack.pop(), stack.data)
print(stack.pop(), stack.data)


//: [Next](@next)
