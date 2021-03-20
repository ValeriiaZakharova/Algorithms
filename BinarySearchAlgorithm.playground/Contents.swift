import UIKit

///input array mast be sorted and items in the array can be compared

func binarySearch(in array: [Int], for itemToFind: Int) -> Int? {

    var leftItem = 0 //first index

    var rightItem = array.count - 1 //last index

    while leftItem <= rightItem {

        var midleItem = Int(floor(Double(leftItem + rightItem) / 2.0))

        // comparing the midle number in the array against the number we are seaking
        //1. the midle number is smaller
        if array[midleItem] < itemToFind {
            leftItem = midleItem + 1

            //2. the midle number is bigger
        } else if array[midleItem] > itemToFind {
            rightItem = midleItem - 1

            //the midle number is equal to the seaking number
        } else {
            //returning the index of the seaking number
            return midleItem
        }
    }
    return nil
}

func binarySearchPrint(in array: [Int], for itemToFind: Int) -> Int? {
    var leftItem = 0
    var rightItem = array.count - 1

    while leftItem <= rightItem {

        let midleItem = Int(floor(Double(leftItem + rightItem) / 2.0))

        print("Looking for \(value) in \(array[leftItem...rightItem])")
        print("Middle index is \(midleItem), value is \(array[midleItem])")

        if array[midleItem] < value {
            print("\(array[midleItem]) is smaller than \(value), choosing right half of array")
            leftItem = midleItem + 1
        } else if array[midleItem] > value {
            print("\(array[midleItem]) is bigger than \(value), choosing left half of array")
            rightItem = midleItem - 1
        } else {
            return midleItem
        }
    }

    return nil
}

let array = [1, 3, 4, 7, 9, 10, 11, 22, 33, 43, 44, 55, 200]

let value = 33

//if let index = binarySearch(in: array, for: value) {
//    print("Found \(value) at index \(index)")
//} else {
//    print("Did not find \(value)")
//}
//
//if let index = binarySearchPrint(in: array, for: value) {
//    print("Found \(value) at index \(index)")
//} else {
//    print("Did not find \(value)")
//}

func binarySearchComparable<T: Comparable>(in array: [T], for itemToFind: T) -> Int? {

    var leftItem = 0 //first index

    var rightItem = array.count - 1 //last index

    while leftItem <= rightItem {

        var midleItem = Int(floor(Double(leftItem + rightItem) / 2.0))

        // comparing the midle number in the array against the number we are seaking
        //1. the midle number is smaller
        if array[midleItem] < itemToFind {
            leftItem = midleItem + 1

            //2. the midle number is bigger
        } else if array[midleItem] > itemToFind {
            rightItem = midleItem - 1

            //the midle number is equal to the seaking number
        } else {
            //returning the index of the seaking number
            return midleItem
        }
    }
    return nil
}

let arrayString = ["a", "abc", "aabc", "aabbc", "aaabbbcc", "bacc", "bbcc", "bbbccc", "cb", "cbb", "cbbc", "d" , "defff", "deffz"]
let item = "cbb"
if let index = binarySearchComparable(in: arrayString, for: item) {
    print("Found \(item) at index \(index)")
} else {
    print("Did not find \(item)")
}
