#include <iostream>

/**
 * Calculates the factorial of a number using recursion.
 * The factorial of a non-negative integer n is the product
 * of all positive integers less than or equal to n.
 *
 * @param int n The non-negative integer whose factorial is to be calculated
 * @return long long The factorial of n
 *
 * Best Case: O(1)
 * Worst Case: O(n)
 * Average Case: O(n)
 * Space Complexity: O(n)
 */

long long factorial(int n) {
    if (n == 0) {
        return 1;
    }

    return n * factorial(n - 1);
}

int main() {
    long long result = factorial(21);
    std::cout << result << "\n";

    return 0;
}