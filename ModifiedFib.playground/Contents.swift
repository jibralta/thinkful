//: Improved Fib

// Thinkful Playground
// Thinkful.combbb

// Fibonacci Sequence

// By definition, the first two numbers in the Fibonacci sequence are 1 and 1, or 0 and 1, depending on the chosen starting point of the sequence, and each subsequent number is the sum of the previous two.

import UIKit

class FibonacciSequence {
    
    let includesZero: Bool
    var values: [Int]
    
    init(maxNumber: Int, includesZero: Bool) {
        self.includesZero = includesZero
        //TODO: Create an array which contains the numbers in the Fibonacci sequence, but don't add any numbers to the array which exceed the maxNumber. For example, if the maxNumber is 10 then the array should contain [0,1,1,2,3,5,8] because the next number is 13 which is higher than the maxNumber. If includesZero is false then you should not include the number 0 in the sequence.
        
        values = [0,1]
        var current = values[0]
        var newVal = values[1]
        
        if maxNumber == 0 && includesZero == false  {
            values = []
        }
        else if includesZero == true {
            values = [0,1]
        }
        else {
            values = [1,1]
        }
        
        while newVal <= maxNumber {
            let oldVal = current
            current = newVal
            newVal = newVal + oldVal
            values.append(newVal)
            }
        if maxNumber != 0 && includesZero == false {
          values.removeLast()
        }
        }


    

    init(numberOfItemsInSequence: Int, includesZero: Bool) {
        self.includesZero = includesZero
        //TODO: Create an array which contains the numbers in the Fibonacci sequence, and the array should contain this many items: numberOfItemsInSequence. For example, if numberOfItemsInSequence is 10 then the array should contain [0,1,1,2,3,5,8,13,21,34] if inlcudesZero is true, or [1,1,2,3,5,8,13,21,34,55] if includesZero is false.
        
            values = [1,1]
            var current = 1
            var newVal = 1
        
        if numberOfItemsInSequence == 0 {
            values = []
        }
            for _ in 2..<numberOfItemsInSequence {
        
                let oldVal = current
                current = newVal
                newVal = newVal + oldVal
                values.append(newVal)
            }
        
            if includesZero == true {
                values.insert(0, atIndex: 0)
                values.removeLast()

            }
        }
}




// MaxNumber

let fibonacciSequence = FibonacciSequence(maxNumber:12345, includesZero: true)
print(fibonacciSequence.values)


let fibSequence = FibonacciSequence(maxNumber:12345, includesZero: false)
print(fibSequence.values)

let fibSequence0 = FibonacciSequence(maxNumber: 0, includesZero: true)
print(fibSequence0.values)


let fibSequence0F = FibonacciSequence(maxNumber: 0, includesZero: false)
print(fibSequence0F.values)



// NumberOfItems

let anotherSequence = FibonacciSequence(numberOfItemsInSequence: 13, includesZero: true)

print(anotherSequence.values)

let sequence2 = FibonacciSequence(numberOfItemsInSequence: 13, includesZero: false)

print(sequence2.values)
