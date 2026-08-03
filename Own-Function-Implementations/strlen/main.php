<?php

declare(strict_types=1);

function own_strlen(string $s): int {
    $count = 0;
    while (isset($s[$count])) {
        $count++;
    }
    
    return $count;
}


echo own_strlen("Nihad") . PHP_EOL;          // Expected: 5
echo own_strlen("Hello World") . PHP_EOL;    // Expected: 11
echo own_strlen("a") . PHP_EOL;              // Expected: 1

// Edge Cases
echo own_strlen("") . PHP_EOL;               // Expected: 0
echo own_strlen(" ") . PHP_EOL;              // Expected: 1
echo own_strlen("   ") . PHP_EOL;            // Expected: 3
echo own_strlen("1234567890") . PHP_EOL;     // Expected: 10
echo own_strlen("!\n\t\r") . PHP_EOL;        // Expected: 4

// Multi-byte / UTF-8 Behavior (byte count)
echo own_strlen("😊") . PHP_EOL;             // Expected: 4
echo own_strlen("Bakı") . PHP_EOL;           // Expected: 5
