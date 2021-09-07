//: [Previous](@previous)
import Foundation

class Node<T>:CustomStringConvertible{
	private(set) var value:T
	var next:Node?
	
	init(_ value:T, _ next:Node? = nil){
		self.value = value
		self.next = next
	}
}
extension Node{
	var description: String{
				
		guard let next = next else {
			return "\(value) ⇢ ⊙"
		}
		return "\(value) ⇢ \(next.description) "
	}
}

struct LinkedList<T>:CustomStringConvertible{
	private(set) var head:Node<T>?
	private(set) var tail:Node<T>?
	
	//MARK: - Properties
	
	var description: String{ isEmpty ? "* Empty list" :
		"\(head!)\t(\(String(describing: head?.value)),\(String(describing: tail?.value)))" }
	var isEmpty:Bool{ head == nil }
	
	
	//MARK: - node(at:)

	func node(at index:Int) -> Node<T>?{
		var node:Node<T>? = head
		var tmpIdx = 0 // headIndex
		while node != nil {
			if tmpIdx == index {
				return node
			}
			node = node?.next
			tmpIdx += 1
		}
		return nil
	}

	//MARK: - push(_:)
	
	mutating func push(_ value:T){
		head = Node(value, head)
		if tail == nil { tail = head }
	}
	
	//MARK: - append(_:)
	
	mutating func append(_ value:T){
		let n = Node(value)
		if tail == nil { head = n; tail = n }
		else{
			tail?.next = n
			tail = n
		}
	}

	//MARK: - insert(_:afterIndex:)
	
	mutating func insert(_ value:T, afterIndex idx:Int){
		if let nodeAtIndex = node(at: idx){
			nodeAtIndex.next = Node(value, nodeAtIndex.next)
		}else{
			//given index is greater than total items in the list
			append(value)
		}
	}
	
	//MARK: - pop()
	
	mutating func pop() -> T?{
		defer {
			head = head?.next
			if isEmpty {
				tail = nil
			}
		}
		return head?.value
	}
	
	//MARK: - removeLast()
	
	mutating func removeLast() -> T?{
		//empty
		guard let head = head else { return nil	}
		//single item
		guard head.next != nil else { return pop() }
		
		//search last element
		var prev = head
		var current = head
		while let next = current.next{
			prev = current
			current = next
		}
		
		prev.next = nil
		tail = prev
		return current.value
	}
	
	//MARK: - remove(afterIndex:)
	mutating func remove(afterIndex idx:Int){
		if let nodeAtIndex = node(at: idx){
			if nodeAtIndex.next != nil{
				nodeAtIndex.next = nodeAtIndex.next?.next
			}else{
				nodeAtIndex.next = nil
			}
		}
	}
	
	mutating func remove(after node:Node<T>) -> T?{
		defer {
			if node.next === tail{
				tail = node
			}
			node.next = node.next?.next
		}
		return node.next?.value
	}
	
}


var list = LinkedList<Int>();list.push(3);list.push(12);list.push(33);list.push(6);print(list)
//list.append(-1);list.append(-2);print(list)
//let node = list.node(at: 2);print(node?.value)	//find value at index
//list.insert(100, afterIndex: 1);print(list)
//list.pop();list.pop();/*list.pop();list.pop();*/print(list)
//list.removeLast();print(list);
//list.remove(afterIndex: 0);print(list)
//let n = list.node(at: 0)!; list.remove(after: n); print(list)








//: [Next](@next)
