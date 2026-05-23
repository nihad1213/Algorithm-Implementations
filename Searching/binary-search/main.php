<?php

declare(strict_types=1);

/**
 * Binary search is a searching algorithm that find position of
 * a specific value within a sorted array. Instead of searching
 * every item one by one it repeatedly cuts the search are in
 * half.
 * 
 * @param array $arr The array to search through
 * @param mixed $target The value to search for
 * @return int The index of the target value, or -1 if not found
 * 
 * Best Case: O(1) - when the target is the first element
 * Worst Case: O(log n) - when the target is the last element
 * Average Case: O(log n) - when the target is somewhere in the middle
 * Space Complexity: O(1) - no additional space is used 
 */

function binarySearch(array $arr, mixed $target): int {
    $left = 0;
    $right = count($arr) - 1;

    while ($left <= $right) {
        $mid = $left + intdiv($right - $left, 2);

        if ($arr[$mid] === $target) {
            return $mid;
        }

        if ($arr[$mid] < $target) {
            $left = $mid + 1;
        } else {
            $right = $mid - 1;
        }
    }

    return -1;
}

echo "\nEMPTY ARRAY\n";
echo binarySearch([], 10) . PHP_EOL;

echo "\nSINGLE ELEMENT\n";
echo binarySearch([999999999], 999999999) . PHP_EOL;
echo binarySearch([999999999], 1) . PHP_EOL;

echo "\nTWO ELEMENTS\n";
echo binarySearch([10, 20], 10) . PHP_EOL;
echo binarySearch([10, 20], 20) . PHP_EOL;
echo binarySearch([10, 20], 15) . PHP_EOL;

$largeVals = [
    PHP_INT_MIN,
    -1000000000,
    -500,
    0,
    500,
    1000000000,
    PHP_INT_MAX
];

echo "\nLARGE INTEGERS\n";
echo binarySearch($largeVals, PHP_INT_MIN) . PHP_EOL;
echo binarySearch($largeVals, 0) . PHP_EOL;
echo binarySearch($largeVals, PHP_INT_MAX) . PHP_EOL;
echo binarySearch($largeVals, 123) . PHP_EOL;

$dup = [7, 7, 7, 7, 7, 7];

echo "\nDUPLICATES\n";
echo binarySearch($dup, 7) . PHP_EOL;
echo binarySearch($dup, 8) . PHP_EOL;

$neg = [-50, -20, -10, -5, -1];

echo "\nNEGATIVE NUMBERS\n";
echo binarySearch($neg, -10) . PHP_EOL;
echo binarySearch($neg, -51) . PHP_EOL;

$big = [];
for ($i = 0; $i < 100000; $i++) {
    $big[] = $i * 3;
}

echo "\nLARGE ARRAY\n";
echo binarySearch($big, 0) . PHP_EOL;
echo binarySearch($big, 3 * 50000) . PHP_EOL;
echo binarySearch($big, 123456789) . PHP_EOL;
