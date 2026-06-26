/**
 Calculates the factorial of a number using recursion.
 The factorial of a non-negative integer `n` is the product
 of all positive integers less than or equal to `n`.

 ## Formula
 - 0! = 1
 - n! = n × (n - 1)! for n > 0

 ## Parameters
 - n: The non-negative integer whose factorial is to be calculated

 ## Returns
 - The factorial of the given number

 ## Throws
 - `FactorialError.negativeNumber`: If n is negative

 ## Complexity
 - Best Case:    O(1)
 - Worst Case:   O(n)
 - Average Case: O(n)
 - Space Complexity: O(n)
 */

enum FactorialError: Error {
    case negativeNumber
}

func factorial(_ n: Int) throws -> Int {
    if n < 0 {
        throw FactorialError.negativeNumber
    }

    if n == 0 {
        return 1
    }

    return n * (try factorial(n - 1))
}

do {
    let result = try factorial(5)
    print(result)
} catch FactorialError.negativeNumber {
    print("Factorial is undefined for negative numbers")
}