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
		return data.isEmpty ? nil : data.remove(at: 0)
	}
}

var queue = Queue<Int>()
queue.enqueue(1);queue.enqueue(22);queue.enqueue(11);queue.enqueue(37); print(queue.data, ", item count: \(queue.count)")
print(queue.dequeue(), queue.data)
print(queue.dequeue(), queue.data)
print(queue.dequeue(), queue.data)
print(queue.dequeue(), queue.data)
print(queue.dequeue(), queue.data)






//: [Next](@next)
