<?php

declare(strict_types=1);

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
 * @param int $n The non-negative integer whose factorial is to be calculated.
 *
 * @return int The factorial of the given number.
 *
 * Best Case: O(n)
 * Average Case: O(n)
 * Wors Case: O(n)
 * 
 * Space Complexity: O(n)
 */

function factorial(int $n): int | float {
    if ($n < 0) {
        throw new InvalidArgumentException("Factorial is undefined for negative numbers");
    }

    if ($n === 0) return 1;

    return $n * factorial($n - 1);
}

echo factorial(21) . PHP_EOL;