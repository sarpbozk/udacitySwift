//
//  tableTestTests.swift
//  tableTestTests
//
//  Created by Bozkurt on 12/22/20.
//

import XCTest
@testable import tableTest

class tableTestTests: XCTestCase {
    let hashTable = HashTable()



    func testExample() throws {
        hashTable.store("Bozkurt")
        hashTable.store("Bozkt")
        hashTable.lookup("Bozkurtlar")
    }
}



class HashTable {
    
    var table: [[String]]
    
    init() {
        table = Array(repeating: [], count: 10000)
    }
    
    // use the helper functions to calulate the hash value, per the instructions
    func calculateHashValue(_ input: String) -> Int {
        return getFirstCharacterValue(input) * 100 + getSecondCharacterValue(input)
    }
    
    // store the input in the hash table, using the appropriate bucket
    func store(_ input: String) {
        let myIndex=calculateHashValue(input)
        table[myIndex].append(input)
    }
    
    
    // return true if the input string is stored in the hash table, otherwise return false
    // ["Bozkurt","Bozk"]
    
    func lookup(_ input: String) -> Bool {
        let myIndex = calculateHashValue(input)
        let inputValues = table[myIndex]
        for inputValue in inputValues {
            if inputValue == input {
                return true
            }
        }
        return false
    }
    
    // gets the hash value of the first character
    func getFirstCharacterValue(_ input: String) -> Int {
        if input.count > 0 {
            return Int(input[input.startIndex].unicodeScalars.first!.value)
        }
        return 0
    }
    
    // gets the hash value of the second character
    func getSecondCharacterValue(_ input: String) -> Int {
        if input.count > 1 {
            return Int(input[input.index(after: input.startIndex)].unicodeScalars.first!.value)
        }
        // string does not have a second index
        return 0
    }
}

    
