# Calculates the factorial of a number using recursion. The factorial of a
# non-negative integer n is the product of all positive integers less than
# or equal to n. This algorithm calls itself n times, multiplying the result
# at each step until it reaches the base case.

# n - the non-negative integer whose factorial is to be calculated
# returns the factorial of n
# raises TypeError if n is not an integer
# raises ArgumentError if n is negative

# Best Case: O(1)
# Worst Case: O(n)
# Average Case: O(n)
# Space Complexity: O(n)
def factorial(n)
    raise TypeError, "n must be an integer" unless n.is_a?(Integer)

    raise ArgumentError, "Factorial is undefined for negative numbers" if n < 0

    return 1 if n == 0

    return n * factorial(n - 1)
end

puts factorial(13)