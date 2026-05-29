<?php

declare(strict_types=1);

/**
 * Recursive linear search is a method for finding a specific target value within an array
 * by calling the same function repeatedly on smaller portions of the dataset until the target
 * is found or all elements are exhousted.
 * 
 * @param array $arr The array to search through
 * @param mixed $target The value to search for
 * @param int index The current position in array
 *
 * @return int The index of target value, or return -1 if not found
 * 
 * Best Case: O(1)
 * Worst Case: O(n)
 * Average Case: O(n)
 * Space Complexity: O(n)
 */

function recursiveLinearSearch(array $arr, mixed $target, int $index): int {
	if ($index == count($arr)) return -1;

	if ($arr[$index] == $target) return $index;

	return recursiveLinearSearch($arr, $target, $index + 1);
}

// 1. EMPTY ARRAY
$empty = [];

echo "Empty array tests:\n";
echo recursiveLinearSearch($empty, 10, 0) . PHP_EOL;

// 2. SINGLE ELEMENT
$one = [999999999];

echo "\nSingle element tests:\n";
echo recursiveLinearSearch($one, 999999999, 0) . PHP_EOL;
echo recursiveLinearSearch($one, 1, 0) . PHP_EOL;

// 3. TWO ELEMENTS (boundary check)
$two = [10, 20];

echo "\nTwo elements tests:\n";
echo recursiveLinearSearch($two, 10, 0) . PHP_EOL;
echo recursiveLinearSearch($two, 20, 0) . PHP_EOL;
echo recursiveLinearSearch($two, 15, 0) . PHP_EOL;

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
echo recursiveLinearSearch($largeVals, PHP_INT_MIN, 0) . PHP_EOL;
echo recursiveLinearSearch($largeVals, 0, 0) . PHP_EOL;
echo recursiveLinearSearch($largeVals, PHP_INT_MAX, 0) . PHP_EOL;
echo recursiveLinearSearch($largeVals, 123, 0) . PHP_EOL;

// 5. LARGE ARRAY (safe recursion size)
$big = [];

for ($i = 0; $i < 10000; $i++) {
    $big[] = $i * 3;
}

echo "\nLarge array tests:\n";
echo recursiveLinearSearch($big, 0, 0) . PHP_EOL;
echo recursiveLinearSearch($big, 3 * 5000, 0) . PHP_EOL;
echo recursiveLinearSearch($big, 3 * 9999, 0) . PHP_EOL;
echo recursiveLinearSearch($big, 1234567, 0) . PHP_EOL;

// 6. DUPLICATES
$dup = [7, 7, 7, 7, 7, 7, 7];

echo "\nDuplicate values tests:\n";
echo recursiveLinearSearch($dup, 7, 0) . PHP_EOL;
echo recursiveLinearSearch($dup, 8, 0) . PHP_EOL;

// 7. NEGATIVE NUMBERS
$negatives = [-50, -20, -10, -5, -1];

echo "\nNegative numbers tests:\n";
echo recursiveLinearSearch($negatives, -10, 0) . PHP_EOL;
echo recursiveLinearSearch($negatives, -51, 0) . PHP_EOL;
