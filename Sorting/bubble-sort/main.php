<?php

declare(strict_types= 1);

/**
 * Bubble Sort is the simplest sorting algorithm that works by repeatedly swapping the adjacent
 * elements if they are in the wrong order. This algorithm is not efficient for large data sets 
 * as its average and worst-case time complexity are quite high.
 * 
 * @param array $arr The array to sort
 *
 * @return array $arr The sorted array
 * 
 * Best Case: O(n)
 * Worst Case: O(n^2)
 * Average Case: O(n^2)
 * Space Complexity: O(1)
 */

function bubbleSort(array $arr): array {
    $length = count($arr);

    for ($i = 0; $i < $length - 1; $i++) {
        $swapped = false;

        for ($j = 0; $j < $length - $i - 1; $j++) {
            if ($arr[$j] > $arr[$j + 1]) {
                $temp = $arr[$j];
                $arr[$j] = $arr[$j + 1];
                $arr[$j + 1] = $temp;
                
                $swapped = true; 
            }        
        }

        if (!$swapped) {
            break;
        }
    }

    return $arr;
}

// 1. EMPTY ARRAY
$empty = [];

echo "Empty array tests:\n";
print_r(bubbleSort($empty));


// 2. SINGLE ELEMENT
$one = [999999999];

echo "\nSingle element tests:\n";
print_r(bubbleSort($one));


// 3. TWO ELEMENTS
$two = [20, 10];

echo "\nTwo elements tests:\n";
print_r(bubbleSort($two));


// 4. ALREADY SORTED
$sortedArr = [1, 2, 3, 4, 5, 6, 7];

echo "\nAlready sorted tests:\n";
print_r(bubbleSort($sortedArr));


// 5. REVERSE SORTED
$reverseArr = [7, 6, 5, 4, 3, 2, 1];

echo "\nReverse sorted tests:\n";
print_r(bubbleSort($reverseArr));


// 6. RANDOM VALUES
$randomArr = [64, 34, 25, 12, 22, 11, 90];

echo "\nRandom values tests:\n";
print_r(bubbleSort($randomArr));


// 7. DUPLICATES
$duplicates = [5, 1, 5, 3, 5, 2, 5];

echo "\nDuplicate values tests:\n";
print_r(bubbleSort($duplicates));


// 8. ALL SAME VALUES
$sameValues = [7, 7, 7, 7, 7];

echo "\nAll same values tests:\n";
print_r(bubbleSort($sameValues));


// 9. NEGATIVE VALUES
$negativeVals = [-5, -1, -10, -3, -2];

echo "\nNegative values tests:\n";
print_r(bubbleSort($negativeVals));


// 10. MIXED POSITIVE AND NEGATIVE
$mixedVals = [3, -1, 4, -5, 0, 2];

echo "\nMixed values tests:\n";
print_r(bubbleSort($mixedVals));


// 11. LARGE INTEGERS
$largeVals = [-2147483648, 2147483647, 0, 1000000000, -1000000000];

echo "\nLarge integer tests:\n";
print_r(bubbleSort($largeVals));


// 12. MANY DUPLICATES
$manyDuplicates = [4, 2, 4, 1, 4, 3, 4, 0, 4];

echo "\nMany duplicates tests:\n";
print_r(bubbleSort($manyDuplicates));


// 13. FLOATING POINT NUMBERS
$floats = [3.14, 1.41, 2.71, 0.57];

echo "\nFloating point tests:\n";
print_r(bubbleSort($floats));


// 14. MIXED ORDER
$mixedOrder = [100, 1, 50, 2, 75, 3, 25];

echo "\nMixed order tests:\n";
print_r(bubbleSort($mixedOrder));