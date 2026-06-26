"""
Calculates the factorial of a number using recursion.
The factorial of a non-negative integer `n` is the product
of all positive integers less than or equal to `n`.

Formula:
    - 0! = 1
    - n! = n × (n - 1)! for n > 0

Args:
    n (int): The non-negative integer whose factorial is to be calculated.

Returns:
    int: The factorial of the given number.

Raises:
    TypeError: If n is not an integer.
    ValueError: If n is negative.

Best Case: O(1)
Worst Case: O(n)
Average Case: O(n)

Space Complexity: O(n)
"""
def factorial(n: int) -> int:
    if not isinstance(n, int):
        raise TypeError("n must be an integer")

    if n < 0:
        raise ValueError("Factorial is undefined for negative numbers")
    
    if n == 0:
        return 1
    
    return n * factorial(n - 1)


print(factorial(21))