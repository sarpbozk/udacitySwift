import UIKit

class Node {
    var value: Int
    var next: Node?

    init(value: Int) {
        self.value = value
    }

}

class LinkedList {

    var head: Node?

    init(head: Node?) {
        self.head = head
    }

    func append(_ node: Node) {

        guard head != nil else {
            head = node
            return
        }

        var current: Node? = head

        while let _ = current?.next {
            current = current?.next
        }
        
        current?.next = node
    }
    
    

}
