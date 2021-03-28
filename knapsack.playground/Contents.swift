import UIKit

func getMax( a:Int, b:Int)->Int {
    // a =
    // b =
    if a>b {
        return a
    }
    else{
        return b
    }
}

func knapsack( maxWeight:Int, weights:[Int], values:[Int], itemCount:Int)->Int {
    
    if itemCount==0 || maxWeight==0 {
        return 0
    }
    // wt  [ 40, 30 , 10  ]
    // val [ 200, 100,120  ]
    // W = 40
    // n = 3
    guard (weights[itemCount - 1] <= maxWeight)else {
        return knapsack(maxWeight: maxWeight, weights: weights, values: values, itemCount: itemCount-1)
    }
    let a = values[itemCount-1] + knapsack(maxWeight: maxWeight - weights[itemCount - 1], weights: weights, values: values, itemCount: itemCount-1)
    let b = knapsack(maxWeight: maxWeight, weights: weights, values: values, itemCount: itemCount-1)
    
    return max(a, b)
}

var values = [100, 200, 120]
var weights = [30, 40, 10]
var maxWeight = 40
var itemCount = values.count
print(knapsack(maxWeight: maxWeight, weights: weights, values: values, itemCount: itemCount))
