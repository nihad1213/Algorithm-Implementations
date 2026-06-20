<?php

declare(strict_types=1);

/**
 * Exponential Search is an efficient searching algorithm designed for sorted arrays that finds a
 * target element by first finding a localized range and then performing a traditional binary search
 * within that range. It is also known as doubling search, galloping search, or finger search
 *
 * @param array $arr The sorted array to search through
 * @param mixed $target The value to search for
 *
 * @return int The index of the target value, or -1 if not found
 *
 * Best Case: O(1)
 * Worst Case: O(log(n))
 * Average Case: O(log(n))
 * Space Complexity: O(log(n))
 */

function binarySearch(array $arr, mixed $target, int $low, int $high): int {
    while ($low <= $high) {
        $mid = $low + intdiv($high - $low, 2);

        if ($arr[$mid] == $target) {
            return $mid;
        } elseif ($arr[$mid] < $target) {
            $low = $mid + 1;
        } else {
            $high = $mid - 1;
        }
    }

    return -1;
}

function exponentialSearch(array $arr, mixed $target): int {
    $size = count($arr);
    if ($size === 0) return -1;

    if ($arr[0] == $target) return 0;

    $bound = 1;

    while ($bound < $size && $arr[$bound] <= $target) {
        $bound *= 2;
    }

    $low = intdiv($bound, 2);
    $high = $bound < $size - 1 ? $bound : $size - 1;

    return binarySearch($arr, $target, $low, $high);
}

// 1. EMPTY ARRAY
$empty = [];

echo "Empty array tests:\n";
echo exponentialSearch($empty, 10) . PHP_EOL;

// 2. SINGLE ELEMENT
$one = [999999999];

echo "\nSingle element tests:\n";
echo exponentialSearch($one, 999999999) . PHP_EOL;
echo exponentialSearch($one, 1) . PHP_EOL;

// 3. TWO ELEMENTS (boundary check)
$two = [10, 20];

echo "\nTwo elements tests:\n";
echo exponentialSearch($two, 10) . PHP_EOL;
echo exponentialSearch($two, 20) . PHP_EOL;
echo exponentialSearch($two, 15) . PHP_EOL;

// 4. LARGE INTEGERS
$largeVals = [
    PHP_INT_MIN,
    -1000000000,
    -500,
    0,
    500,
    1000000000,
    PHP_INT_MAX
];

echo "\nLarge integer tests:\n";
echo exponentialSearch($largeVals, PHP_INT_MIN) . PHP_EOL;
echo exponentialSearch($largeVals, 0) . PHP_EOL;
echo exponentialSearch($largeVals, PHP_INT_MAX) . PHP_EOL;
echo exponentialSearch($largeVals, 123) . PHP_EOL;

// 5. LARGE ARRAY
$big = [];

for ($i = 0; $i < 10000; $i++) {
    $big[] = $i * 3;
}

echo "\nLarge array tests:\n";
echo exponentialSearch($big, 0) . PHP_EOL;
echo exponentialSearch($big, 3 * 5000) . PHP_EOL;
echo exponentialSearch($big, 3 * 9999) . PHP_EOL;
echo exponentialSearch($big, 1234567) . PHP_EOL;

// 6. DUPLICATES
$dup = [7, 7, 7, 7, 7, 7, 7];

echo "\nDuplicate values tests:\n";
echo exponentialSearch($dup, 7) . PHP_EOL;
echo exponentialSearch($dup, 8) . PHP_EOL;

// 7. NEGATIVE NUMBERS
$negatives = [-50, -20, -10, -5, -1];

echo "\nNegative numbers tests:\n";
echo exponentialSearch($negatives, -10) . PHP_EOL;
echo exponentialSearch($negatives, -51) . PHP_EOL;