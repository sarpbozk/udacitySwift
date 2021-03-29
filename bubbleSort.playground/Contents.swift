import UIKit

var myArray = [ 1 , -5 , 5 , 0 , 3 , 8 , -1 , -9 ]


class BubbleSort {
    func bubble(sort arrayToBeSorted: Array<Int> ) -> Array<Int> {
        
        var arrayToBeSorted = arrayToBeSorted
        let count = arrayToBeSorted.count
        
        for _ in 0...count-2 {
            for i2 in 0...count-2 {
                if arrayToBeSorted[i2] > arrayToBeSorted[i2+1] {
                    let temp = arrayToBeSorted[i2]
                    arrayToBeSorted[i2] = arrayToBeSorted[i2+1]
                    arrayToBeSorted[i2+1] = temp
                }
            }
        }
        
        
        
//        while i < count {
//            var current = 0
//            var next = 1
//            while current < count {
//                if arrayToBeSorted[current] >= arrayToBeSorted[next] {
//                    let placeHolder = arrayToBeSorted[next]
//                    arrayToBeSorted[next] = arrayToBeSorted[current]
//                    arrayToBeSorted[current] = placeHolder
//                    current += 1
//                    next += 1
//                }
//                else {
//                    next += 1
//                }
//
//            }
//            i+=1
//        }
        return arrayToBeSorted
    }
    
}
let bs = BubbleSort()

bs.bubble(sort: myArray)






































//var myArray = [Int]()
//func arraySize(size theSize: Int) ->Int {
//    var myArray = myArray[theSize]
//    return theSize
//        var i = 0
//        for _ in 0..< theSize {
//            myArray.append(<#T##newElement: Int##Int#>)
//
//
//        }
//
//}
//var i = arraySize(size: 5)
//func addElements(add theElement: Int){
//    myArray.append(theElement)
//    guard myLenght >= 0 else{
//        i -= 1
//        addElements(add: <#T##Int#>)
//    }
//
//}
//
