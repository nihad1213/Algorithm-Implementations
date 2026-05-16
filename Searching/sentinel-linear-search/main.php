<?php 

declare(strict_types=1);

/**
 * Sentinel Linear Search is an optimized version of the linear search algorithm.
 * Number of comparisons is reduced by using a sentinel value to mark the end of the array.
 * 
 * @param array $arr The array to search through
 * @param mixed $target The value to search for
 * @return int The index of the target value, or -1 if not found
 * 
 * Best Case: O(1)
 * Worst Case: O(n)
 * Average Case: O(n)
 * Space Complexity: O(1)
 */

function sentinelLinearSearch(array $arr, mixed $target): int {
    $size = count($arr);

    if ($size === 0) return -1;

    $last = $arr[$size -1];
    $arr[$size - 1] = $target;

    $i = 0;

    while($arr[$i] !== $target) {
        $i++;
    }

    $arr[$size - 1] = $last;

    if(($i < $size - 1) || ($arr[$size - 1] === $target)) {
        return $i;
    }

    return -1;
}

echo sentinelLinearSearch([1, 2, 3, 4, 5], 3) . "\n";
echo sentinelLinearSearch([1, 2, 3, 4, 5], 6) . "\n";
echo sentinelLinearSearch([], 1)              . "\n";
echo sentinelLinearSearch([1, 2, 3, 4, 5], 1) . "\n";
echo sentinelLinearSearch([1, 2, 3, 4, 5], 5) . "\n";