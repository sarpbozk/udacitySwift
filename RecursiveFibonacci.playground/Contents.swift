import UIKit


func getFib(_ position: Int) -> Int {
    var fibs = [Int]()

    if position == 0 || position == 1 {
        fibs.append(position)
        return position
    }
    else{
        var first = 0
        var second = 1
    var fib = 1

        for _ in 2...position {
            fib = first + second
            first = second
            second = fib
            fibs.append(fib)
        }
        //    return getFib(position - 1) + getFib(position - 2)
        return getFib(position - 1) + getFib(position - 2)

    }
}
getFib(8)




















//var array: [Int] = [Int]()
//var array: [Int] = Array<Int>()

//var fibs = [Int]()
//fibs[0] = 0
//fibs[1] = 1
//fibs[2] = 1
//fibs[3] = 2
//fibs[4] = 3
//fibs[5] = 5
//fibs[6] = 8
//fibs[7] = 13
//fibs[8] = 21
//fibs[9] = 34
//
//func generateFibbonacci(size size: Int){
//
//}
//
//func callFibonacci (get location: Int) -> Int{
//
//    guard location > 1 else {
//        return location
//    }
//
//    return fibs[location-2] + fibs[location-1]
//
////    if (location == 0 || location == 1){
////        return location
////    }
////    else
//}














tb = []
a= sum (tb)
def mukemmelSayiFonksiyonu(sayi)
  for i in range ( 1 , sayi )
      if sayi % i == 0
          append i to tb




 i= (the number I desire)
 print( mukemmelSayiFonksiyonu(i)

return tb




 mukemmelSayiFonksiyonu(
