import UIKit

class Node {
    var value : Int
    var next : Node?
    init(value: Int) {
        self.value = value  // we construct the "value"
    }
}



class LinkedListV2{
    
    var head: Node?
    
    init () {
        
    }
    
    func addElement(_ value: Int){
        let node = Node(value: value)
        
        if (head == nil){
            head=node
            
        }
        else {
            
            var current: Node? = head
            
            while current?.next != nil {
                current = current?.next
            }
            current?.next = node
            
        }
    }
    
    func showElement(at location: Int) -> Node? {
        guard location >= 0 else {
            return nil
        }
        
        var counter=0
        var current=head
        while counter < location {
            //            if counter == location {
            //                return current
            //            }
            current = current?.next
            counter += 1
        }
        //        return (counter == location) ? current : nil
        return current
    }
    
    func insertElement(_ value: Int, at position: Int) {
        let node = Node(value: value)

        guard position >= 0 else {
            return
        }
        
        var counter = 0
        var current = head
        
        if position > 0 {
            while counter < position {
                if counter == position - 1 {
                    node.next = current?.next
                    current?.next = node
                    break
                }
                current = current?.next
                counter += 1
            }
        } else if position == 0 {
            node.next = head
            head = node
        }
    }

    func eraseElement(withValue value: Int  ){
        var current = head
        var previous: Node?
        
        while current?.value != value && current?.next != nil {
            previous = current
            current = current?.next
        }
        
        if current?.value == value {
            if previous != nil {
                previous?.next = current?.next
            } else {
                head = current?.next
            }
        }
    }
    
}


let ll = LinkedListV2()
//ll.showElement(at: 0)?.value
//ll.showElement(at: -1)?.value
//ll.showElement(at: 100)?.value
//
//
//ll.addElement(0)
//ll.showElement(at: 0)?.value
//ll.showElement(at: 1)?.value
//ll.addElement(1)
//ll.showElement(at: 0)?.value
//ll.showElement(at: 2)?.value
//ll.showElement(at: 1)?.value
//ll.showElement(at: -1)?.value
//ll.showElement(at: 100)?.value
//
//ll.eraseElement(withValue: 1)
//ll.addElement(2)
//ll.showElement(at: 1)?.value
//ll.showElement(at: 2)?.value
//
//ll.insertElement( 5 , at: 1)
ll.addElement(71)
ll.addElement(-59)
ll.addElement(453)
ll.addElement(-9712)
ll.addElement(0)
ll.addElement(2)
ll.addElement(3)
ll.showElement(at: 6)?.value
ll.insertElement(398324843, at: 1)
ll.showElement(at: 0)?.value
ll.showElement(at: 1)?.value
ll.showElement(at: 2)?.value
ll.showElement(at: 3)?.value
ll.eraseElement(withValue: 398324843)
ll.showElement(at: 0)?.value
ll.showElement(at: 1)?.value
ll.showElement(at: 2)?.value






