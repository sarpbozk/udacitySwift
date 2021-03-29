import Foundation



func mergeSortedArrays(left leftArray: [Int], right rightArray: [Int]) -> [Int] {
    var sortedArray = [Int]()
    sortedArray.reserveCapacity(leftArray.count + rightArray.count)
    var li = 0 , ri = 0
    while  li < leftArray.count && ri < rightArray.count{
        if leftArray[li] < rightArray[ri] {
            sortedArray.append(leftArray[li])
            li += 1
        }
        else {
            sortedArray.append(rightArray[ri])
            ri += 1
        }
    }
    
    if li >= leftArray.count {
        for i in ri..<rightArray.count{
            sortedArray.append(rightArray[i])
        }
    }
    else {
        for i in li..<leftArray.count {
            sortedArray.append(leftArray[i])
            
        }
    }
    return sortedArray
}

func mergeSort(array: [Int]) -> [Int] {
    guard array.count > 1 else {
        return array
    }
    
    let midIndex = array.count/2
    let leftArray = mergeSort(array: Array(array[0..<midIndex]))
    let rightArray = mergeSort(array: Array(array[midIndex..<array.count]))
    
    return mergeSortedArrays(left: leftArray, right: rightArray)
}

//1 6 7
//6 7     1 8
let left = [ 1 , 2 , 4 ]

let right = [ 2 , 3 , 5 , 8 ]
let array = [ 213 , 0 , -5 , -7 , 9 , 4 ]
mergeSort(array: array)
mergeSortedArrays(left: left, right: right)

// 1 6 -1 4  = -1 1 4 6
// 1 6 = 1 6     -1 4 = -1 4
// 1   6   -1   4

// 1  6



// 0..<midindex
// midindex..< arraycount

