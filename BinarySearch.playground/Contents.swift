import UIKit


func binarySearch(_ array: [Int], value: Int) -> Int? {
    
    var lowIndex = 0
    var highIndex = array.count - 1
    
    while lowIndex <= highIndex {
        let midIndex = (lowIndex + highIndex) / 2
        if array[midIndex] == value {
            return midIndex
        } else if array[midIndex] < value {
            lowIndex = midIndex + 1
        } else {
            highIndex = midIndex - 1
        }
    }
    return nil
}
// Test cases
let testArray = [1, 3, 9, 11, 15, 19, 29]
let testVal1 = 25
let testVal2 = 15
let x = binarySearch(testArray, value: testVal1) // Should be nil
print(x)
print(binarySearch(testArray, value: testVal2)!) // Should be 4
testArray[0]

class Node {
    var val: Int
    var left: Node?
    var right: Node?
    init(val: Int) {
        self.val = val
    }
}

let node5 = Node(val: 5)
let node3 = Node(val: 3)
let node1 = Node(val: 1)
let node4 = Node(val: 4)
let node8 = Node(val: 8)
let node7 = Node(val: 7)
let node9 = Node(val: 9)
node5.left = node3
node5.right = node8
node3.left = node1
node3.right = node4
node8.left = node7
node8.right = node9

func recursiveBinarySearch(root: Node?, search: Int) -> Node? {
    guard let root = root else {
        return nil
    }
    
    if root.val == search {
        return root
        
    } else if root.val > search {
        let foundNode = recursiveBinarySearch(root: root.left, search: search)
        return foundNode
    } else {
        let founNode = recursiveBinarySearch(root: root.right, search: search)
        return founNode
    }
}


recursiveBinarySearch(root: node5, search: 7)




let myArray: [Int] = [5,6,4,2,5,67,89]

func recursiveMerge(merge inputArray: Array<Int>) -> Array<Int> {
    
    var inputArray = inputArray
    if inputArray.count <= 1 {
        return inputArray
    }
    let midI: Int = inputArray.count/2
    var leftA = [Int]()
    leftA.reserveCapacity(midI+1)
    var rightA = [Int]()
    rightA.reserveCapacity(midI+1)
    
    for i in 0..<inputArray.count {
        if i < midI {
            leftA.append(inputArray[i])
        } else {
            rightA.append(inputArray[i])
        }
    }
    for i in ..
    var sortedLeftA = recursiveMerge(merge: leftA)
    var sortedRightA = recursiveMerge(merge: rightA)
    return sortedLeftA
    
    //merger 2 sortesArray
    
}
