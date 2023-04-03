import UIKit

var fibSeries = [Int]()
var inputArray = [1, 1, 1, 2, 2, 2, 2, 2, 3, 4, 22, 33]
var outputArray = [Int]()

fibSeries.append(0)
var i = 0
var j = 0
while i < inputArray.count {
    let currentNumber = inputArray[i]
    
    if fibSeries[j] <= currentNumber {
        j += 1
        if j == 1 {
            fibSeries.append(j)
        } else {
            fibSeries.append(fibSeries[j-2] + fibSeries[j-1])
        }
    } else {
        outputArray.append(fibSeries[j])
        i += 1
    }
}
print(fibSeries)
print(outputArray)
