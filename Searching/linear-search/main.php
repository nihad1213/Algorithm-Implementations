<?php

/**
 * Linear search, or sequential search,
 * is the simplest method for finding a
 * specific value within a collection of data.
 * 
 * @param array $arr The array to search through
 * @param mixed $target The value to search for
 * @return int The index of the target value, or -1 if not found
 * 
 * Best Case: O(1) - when the target is the first element
 * Worst Case: O(n) - when the target is the last element
 * Average Case: O(n) - when the target is somewhere in the middle
 * Space Complexity: O(1) - no additional space is used 
 */

declare(strict_types=1);

function linearSearch($arr, $target): int {
    for ($i = 0; $i < count($arr); $i++) {
        if ($arr[$i] == $target) {
            return $i;
        }
    }

    return -1;
}


echo linearSearch([1, 2, 3, 4, 5], 3) . "\n";
echo linearSearch([1, 2, 3, 4, 5], 6) . "\n";
echo linearSearch([], 1)              . "\n";
echo linearSearch([1, 2, 3, 4, 5], 1) . "\n";
echo linearSearch([1, 2, 3, 4, 5], 5) . "\n";
