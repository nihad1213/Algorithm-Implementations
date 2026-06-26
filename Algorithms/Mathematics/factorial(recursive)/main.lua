--- Calculates the factorial of a number using recursion.
--- The factorial of a non-negative integer n is the product
--- of all positive integers less than or equal to n.
---
--- @param n number The non-negative integer whose factorial is to be calculated
--- @return number The factorial of n
---
--- Best Case:    O(1)
--- Worst Case:   O(n)
--- Average Case: O(n)
--- Space Complexity: O(n)
function factorial(n)
    if n == 0 then
        return 1
    end

    return n * factorial(n - 1)
end

print(factorial(12))