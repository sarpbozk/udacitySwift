import UIKit

class Classy {
    
    var items: [String]
    var classiness: Int
    
    init() {
        self.items = []
        self.classiness = 0
    }
    
    func addItem ( inputString: String ){
        items.append( inputString)
        
    }
    func getClassiness(){
        
    }
}



//Uncomment to test

//let me = Classy()
//
//print(me.getClassiness()) // Should be 0
//
//me.addItem("tophat")
//print(me.getClassiness()) // Should be 2
//
//me.addItem("bowtie")
//me.addItem("jacket")
//me.addItem("monocle")
//print(me.getClassiness()) // Should be 11
//
//me.addItem("bowtie")
//print(me.getClassiness()) // Should be 15
