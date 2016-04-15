//: [Previous](@previous)

import Foundation

extension Array {
    var midIndex: Int {
        
        guard self.count > 1 else {
            return 0
        }
        return (self.count / 2) - 1
    }
    
    var minIndex: Int {
        return self.startIndex
    }
    
    var maxIndex: Int {
        return self.endIndex - 1
    }
    
}

//: [Next](@next)





var array = Array(1...10).filter{ $0 % 2 == 0}


func binarySearch(sequence: [Int], searchKey:Int) {
    
    
    let minValue = sequence[sequence.minIndex]
    let maxValue = sequence[sequence.maxIndex]
    let midValue = sequence[sequence.midIndex]
    
    guard midValue != searchKey else {
        print("we found your item \(searchKey)")
        return
    }
    
    guard searchKey < maxValue && searchKey > minValue else {
        print("we count not find your item")
        return
    }
    
    if midValue > searchKey {
        binarySearch(Array(sequence[sequence.minIndex...sequence.midIndex-1]), searchKey:searchKey)
    } else {
        binarySearch(Array(sequence[sequence.midIndex+1...sequence.maxIndex]), searchKey:searchKey)
    }
    
}

binarySearch(array, searchKey: 4)
binarySearch(array, searchKey: 100)
binarySearch(array, searchKey: 5)


