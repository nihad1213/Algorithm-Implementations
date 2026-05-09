<?php

/**
 * Linear search, or sequential search,
 * is the simplest method for finding a
 * specific value within a collection of data.
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
