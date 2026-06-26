"use strict"

/**
 * Calculates the factorial of a number using recursion.
 *
 * The factorial of a non-negative integer `n` is the product
 * of all positive integers less than or equal to `n`.
 *
 * Formula:
 * - 0! = 1
 * - n! = n × (n - 1)! for n > 0
 *
 * @param {Number} n The non-negative integer whose factorial is to be calculated.
 * 
 * @return {Number}  The factorial of the given number.
 * 
 * @throws {Error} If n is negative
 * @throws {TypeError} If n is not integer
 *
 * Best Case: O(1)
 * Average Case: O(n)
 * Wors Case: O(n)
 * 
 * Space Complexity: O(n)
 */
function factorial(n) {
    if (!Number.isInteger(n)) {
        throw new TypeError("n must be an Integer");
    }
    
    if (n === 0) return 1;

    if (n < 0) {
        throw new Error("Factorial is undefined for negative numbers"); 
    }

    return n * factorial(n - 1);
}

console.log(factorial(21))