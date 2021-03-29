import UIKit
//


func quicksort(_ input: [Int], low: Int, high: Int) -> [Int] {
    var result = input
    
    if low < high {
        let pivot = result[high]
        var i = low
        for j in low..<high {
            if  result[j] <= pivot {
                (result[i], result[j]) = (result[j], result[i])
                i += 1
            }
        }
        (result[i], result[high]) = (result[high], result[i])
        result = quicksort(result, low: low, high: i - 1)
        result = quicksort(result, low: i + 1, high: high)
    }
    
    return result
}
                //     i j
var testArray = [21, 4, 1, 3, 9, 20, 25, 6, 21, 14] // i = 3
       //        1 3 5 2 4
       //        1 3 2 5 4
        //       1 3 2 4 5    low = 0 high = 2 a[low] = 1 a[high] = 2    i =2  1 2 3 4 5
        //       1 3 2 4 5    low = 4 high = 4 a[low] = 5 a [high] = 5

quicksort(testArray, low: 0, high: testArray.count - 1)
