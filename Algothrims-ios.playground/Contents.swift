import UIKit

var str = "Hello, playground"

print(str)

// How do you find the missing number in a given integer array of 1 to 10? (solution)
// [1,2,3,4,5,7,8,9,10]
/// 1 + 2 + 3 + 4  =  n(n+1) /2
        
var array = [1,2,3,4,5,7,8,9,10]
var n = 10
var arraySum = 0
findMissingNumber()

func findMissingNumber() {
    var totalSumOfNaturalNumber = n*(n+1) / 2
    
    for obj in array {
        arraySum = arraySum + obj
    }
    var missingNumber = totalSumOfNaturalNumber - arraySum
    print(missingNumber)
}


// how to remove duplicate on a given integer array? (solution)
// [1,2,3,4,4,2]

var inputArray = [1,2,3,4,4,2]
var outPutArray : [Int] = [Int]()
removeDuplicateArray()
func removeDuplicateArray() {
    for obj in inputArray {
        if ((outPutArray.contains(obj))) {
            //
        } else {
            outPutArray.append(obj)
        }
    }
    print(outPutArray)
}

// How do you find the duplicate number on a given integer array? (solution)
//Input : n = 7 and array[] = {1, 2, 3, 1, 3, 6, 6}
//Output: 1, 3, 6

var inputDuplicateArray = [1, 2, 3, 1, 3, 6, 6]
var outPutDuplicateArray : [Int] = [Int]()

findDublicateInArray()

func findDublicateInArray() {
    var i = 0
   
    for obj in inputDuplicateArray {
        let start = i + 1
        for j in start..<inputDuplicateArray.count{
            if  obj ==  inputDuplicateArray[j] {
                outPutDuplicateArray.append(obj)
            }
        }
        i = i + 1
    }
    print(outPutDuplicateArray)
}
// How do you find the largest and smallest number in an unsorted integer array? (solution)
var inputDataArray = [5, 2, 3, 4, 1, 6, 7]
var smallValue:Int = inputDataArray[0]
var largeValue : Int = inputDataArray[0]

findMinMaxValue()
func findMinMaxValue() {
    //inputDataArray.sort()
    var i = 0
    for obj in inputDataArray {
        if obj < smallValue {
            smallValue = obj
        }
        if obj > largeValue {
            largeValue = obj
        }
        i = i + 1
    }
    print(smallValue)
    print(largeValue)
}

// Check String in palindrome

var string = "radsr"

print(findPalindrome())
func findPalindrome() -> Bool{
    let len = string.count / 2
    for i in  0..<len {
        let start = string.index(string.startIndex, offsetBy: i)
        let end = string.index(string.endIndex, offsetBy: (i * -1) - 1)
        
        if string[start].lowercased() != string[end].lowercased() {
            return false
        }
    }
    
    return true
}
