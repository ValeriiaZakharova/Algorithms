import UIKit

func selectionSort(_ array: [Int]) -> [Int] {

    var sortArray = array

    // find the smallest element in the sortarray
    //gives every element's its index

    for item in sortArray.indices {
        print(sortArray.indices)
        var minItem = item
        
        for nextItem in item..<sortArray.count {

            if sortArray[nextItem] < sortArray[minItem] {
                minItem = nextItem
            }
        }
        // swap minItem with item while sortArray will be sorted
        if minItem != item {
            sortArray.swapAt(minItem, item)
        }
    }
        return sortArray
}


let array = [10, 3, 8, 5, 4, 100, 15]

print(selectionSort(array))
