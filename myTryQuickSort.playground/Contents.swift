import UIKit

func quickSort(_ myArray: [Int], low: Int, high: Int) -> [Int]{
    var myArray = myArray
    var temp: Int
    if low < high {
        let pivot = myArray[high]
        var i = low
        for j in low..<high {
            if myArray[j] <= pivot {
                temp = myArray[j]
                myArray[j] = myArray[i]
                myArray[i] = temp
                i+=1
            }
        }
        temp = myArray[high]
        myArray[high] = myArray[i]
        myArray[i] = temp
//        (myArray[i], myArray[high]) = (myArray[high], myArray[i])
        myArray = quickSort(myArray, low: low, high: i - 1)
        myArray = quickSort(myArray, low: i + 1, high: high)
    }
    return myArray
}
let myArray = [1, 2, 6, 3, 5]
quickSort(myArray, low: 0, high: myArray.count-1 )
