import Foundation

public final class Node<T>{
	public private(set) var value:T
	public var next:Node?
	
	public init(_ value:T, _ next:Node? = nil){
		self.value = value
		self.next = next
	}
}
extension Node:CustomStringConvertible{
	public var description: String{
		guard let next = next else {
			return "\(value) ⇢ ⊙"
		}
		return "\(value) ⇢ \(next.description) "
	}
}
