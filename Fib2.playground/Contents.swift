// Thinkful.com

// Fibonacci Sequence

// By definition, the first two numbers in the Fibonacci sequence are 1 and 1, or 0 and 1, depending on the chosen starting point of the sequence, and each subsequent number is the sum of the previous two.

import UIKit

class FibonacciSequence {
    
    let includesZero: Bool
    var values: [Int]
    
     init(maxNumber: Int, includesZero: Bool) {
     self.includesZero = includesZero
     //TODO: Create an array which contains the numbers in the Fibonacci sequence, but don't add any numbers to the array which exceed the maxNumber. For example, if the maxNumber is 10 then the array should contain [0,1,1,2,3,5,8] because the next number is 13 which is higher than the maxNumber. If includesZero is false then you should not include the number 0 in the sequence.
        
        if includesZero == true {
            values = [0,1]
            var current = 0
            var newVal = 1
            
            while newVal <= maxNumber { // need to stop before the newVal < maxNumber so it will not execute again or some sort of removelast.
                let oldVal = current
                current = newVal
                newVal = newVal + oldVal
                values.append(newVal)
            }
            values.removeLast()

        }
        else {
            values = [1,1]
            var current = 0
            var newVal = 1
            
            while newVal <= maxNumber {
                let oldVal = current
                current = newVal
                newVal = newVal + oldVal
                values.append(newVal)
        }
            values.removeLast()

        }
     }

    init(numberOfItemsInSequence: Int, includesZero: Bool) {
        self.includesZero = includesZero
        //TODO: Create an array which contains the numbers in the Fibonacci sequence, and the array should contain this many items: numberOfItemsInSequence. For example, if numberOfItemsInSequence is 10 then the array should contain [0,1,1,2,3,5,8,13,21,34] if inlcudesZero is true, or [1,1,2,3,5,8,13,21,34,55] if includesZero is false.
        
        
        if includesZero == true {
            values = [0,1]
            var current = 0
            var newVal = 1
            
            for _ in 2..<numberOfItemsInSequence {
                let oldVal = current
                current = newVal
                newVal = newVal + oldVal
                values.append(newVal)
            }
        }
        else {
            values = [1,1]
            var current = values[0]
            var newVal = values[1]
            
            for _ in 2..<numberOfItemsInSequence {

                let oldVal = current
                current = newVal
                newVal = newVal + oldVal
                values.append(newVal)

            }
        }
    }
}


// MaxNumber

let fibonacciSequence = FibonacciSequence(maxNumber:12345, includesZero: true)

print(fibonacciSequence.values)

let fibSequence = FibonacciSequence(maxNumber:12345, includesZero: false)

print(fibSequence.values)


// NumberOfItems

let anotherSequence = FibonacciSequence(numberOfItemsInSequence: 13, includesZero: true)
print(anotherSequence.values)

let sequence2 = FibonacciSequence(numberOfItemsInSequence: 13, includesZero: false)
print(sequence2.values)




