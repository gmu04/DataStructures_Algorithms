//: [Previous](@previous)

import Foundation

//LIFO - first in first out

struct Queue<T>{
	private(set) var data = [T]()
	var count:Int { data.count }
	
	mutating func enqueue(_ value:T){
		data.append(value)
	}
	
	mutating func dequeue() -> T?{
		return data.indices.contains(0) ? data.remove(at: 0) : nil
	}
}

var stack = Queue<Int>()
stack.enqueue(1);stack.enqueue(22);stack.enqueue(11);stack.enqueue(37); print(stack.data, ", item count: \(stack.count)")
print(stack.dequeue(), stack.data)
print(stack.dequeue(), stack.data)
print(stack.dequeue(), stack.data)
print(stack.dequeue(), stack.data)
print(stack.dequeue(), stack.data)






//: [Next](@next)
