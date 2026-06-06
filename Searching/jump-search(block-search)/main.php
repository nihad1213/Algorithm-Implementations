<?php

declare(strict_types=1);

/**
 * Jump Search (also known as block search) is a searching algorithm for
 * sorted arrays that checks fewer elements than a linear
 * search by jumping ahead by fixed steps.
 *
 * @param array $arr The sorted array to search through
 * @param mixed $target The value to search for
 *
 * @return int The index of the target value, or -1 if not found
 *
 * Best Case: O(1)
 * Worst Case: O(sqrt(n))
 * Average Case: O(sqrt(n))
 * Space Complexity: O(1)
 */

function jumpSearch(array $arr, mixed $target): int {
    $size = count($arr);
    if ($size === 0) return -1;

    $step = (int) sqrt($size);
    $prev = 0;

    while ($prev < $size && $arr[$prev] < $target) {
        $next = $prev + $step;

        if ($next > $size) $next = $size;

        if ($arr[$next - 1] >= $target) break;

        $prev = $next;

        if ($prev >= $size) return -1;
    }

    $end = $prev + $step;
    if ($end > $size) $end = $size;

    for ($i = $prev; $i < $end; $i++) {
        if ($arr[$i] == $target) return $i;
        if ($arr[$i] > $target)  return -1;
    }

    return -1;
}

// 1. EMPTY ARRAY
$empty = [];

echo "Empty array tests:\n";
echo jumpSearch($empty, 10) . PHP_EOL;

// 2. SINGLE ELEMENT
$one = [999999999];

echo "\nSingle element tests:\n";
echo jumpSearch($one, 999999999) . PHP_EOL;
echo jumpSearch($one, 1) . PHP_EOL;

// 3. TWO ELEMENTS (boundary check)
$two = [10, 20];

echo "\nTwo elements tests:\n";
echo jumpSearch($two, 10) . PHP_EOL;
echo jumpSearch($two, 20) . PHP_EOL;
echo jumpSearch($two, 15) . PHP_EOL;

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
echo jumpSearch($largeVals, PHP_INT_MIN) . PHP_EOL;
echo jumpSearch($largeVals, 0) . PHP_EOL;
echo jumpSearch($largeVals, PHP_INT_MAX) . PHP_EOL;
echo jumpSearch($largeVals, 123) . PHP_EOL;

// 5. LARGE ARRAY
$big = [];

for ($i = 0; $i < 10000; $i++) {
    $big[] = $i * 3;
}

echo "\nLarge array tests:\n";
echo jumpSearch($big, 0) . PHP_EOL;
echo jumpSearch($big, 3 * 5000) . PHP_EOL;
echo jumpSearch($big, 3 * 9999) . PHP_EOL;
echo jumpSearch($big, 1234567) . PHP_EOL;

// 6. DUPLICATES
$dup = [7, 7, 7, 7, 7, 7, 7];

echo "\nDuplicate values tests:\n";
echo jumpSearch($dup, 7) . PHP_EOL;
echo jumpSearch($dup, 8) . PHP_EOL;

// 7. NEGATIVE NUMBERS
$negatives = [-50, -20, -10, -5, -1];

echo "\nNegative numbers tests:\n";
echo jumpSearch($negatives, -10) . PHP_EOL;
echo jumpSearch($negatives, -51) . PHP_EOL;