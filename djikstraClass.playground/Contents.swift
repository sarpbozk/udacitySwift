import UIKit

class ShortestPath {
    func minDistance ( dist:[Int], sptSet:Set<Int> ) -> Int {
        var min = Int.max
        var minIndex = -1
        for  v in 0..<dist.count  {
            if sptSet.contains(v)==false && dist[v] <= min {
                min = dist[v]
                minIndex = v
                
            }
        }
        return minIndex
    }
    
    func printSolution( dist:[Int] ) {
        for i in 0..<dist.count {
            print( i," ",dist[i] )
        }
    }
    /*
     
     redGreenPass.contains(false)
     var intSet:Set<Int> = Set<Int>(minimumCapacity: 9)
     intSet = [Int](repeating: 9999, count: graph.count)
     intSet.insert(T##newMember: Int##Int)
     */
    func djikstra( graph:[[Int]], src:Int ){
        var dist = [Int](repeating: Int.max, count: graph.count)
        var sptSet:Set<Int> = Set<Int>(minimumCapacity: dist.count)
        
        dist[src] = 0
        for _ in 0..<dist.count-1 {
            // counter = 3
            let u = minDistance(dist: dist, sptSet: sptSet)
            // u = 2
            sptSet.insert(u)
            for v in 0..<dist.count {
                // v = 4
                if !sptSet.contains(v) && graph[u][v] != 0 && dist[u] != Int.max && dist[u] + graph[u][v] < dist[v] {
                    dist[v] = dist[u] + graph[u][v]
                }
            }
        }
        printSolution(dist: dist)
        
    }
}

let graph = [
    [0, 4, 0, 0, 0, 0, 0, 8, 0],
    [4, 0, 8, 0, 0, 0, 0, 11, 0],
    [0, 8, 0, 7, 0, 4, 0, 0, 2],
    [0, 0, 7, 0, 9, 14, 0, 0, 0],
    [0, 0, 0, 9, 0, 10, 0, 0, 0],
    [0, 0, 4, 14, 10, 0, 2, 0, 0],
    [0, 0, 0, 0, 0, 2, 0, 1, 6],
    [8, 11, 0, 0, 0, 0, 1, 0, 7],
    [0, 0, 2, 0, 0, 0, 6, 7, 0]
  ]
let t = ShortestPath()
t.djikstra(graph: graph, src: 0)
//dram of gifted child
