"use strict";

/**
 * Bubble Sort is the simplest sorting algorithm that works by repeatedly
 * swapping adjacent elements if they are in the wrong order.
 *
 * It repeatedly passes through the array until no swaps are needed.
 *
 * param {Array} arr - the array of numbers to sort
 * return {Array} The sorted array in ascending order
 *
 * Best Case:    O(n)
 * Worst Case:   O(n^2)
 * Average Case: O(n^2)
 * Space Complexity: O(1)
 */

function bubbleSort(arr) {
    const n = arr.length;

    for (let i = 0; i < n - 1; i++) {
        let swapped = false;

        for (let j = 0; j < n - i - 1; j++) {
            if (arr[j] > arr[j + 1]) {
                [arr[j], arr[j + 1]] = [arr[j + 1], arr[j]];
                swapped = true;
            }
        }

        if (!swapped) break;
    }

    return arr;
}

// 1. EMPTY ARRAY
console.log("Empty array tests:");
console.log(bubbleSort([]));

// 2. SINGLE ELEMENT
console.log("\nSingle element tests:");
console.log(bubbleSort([999999999]));

// 3. TWO ELEMENTS
console.log("\nTwo elements tests:");
console.log(bubbleSort([20, 10]));

// 4. ALREADY SORTED
console.log("\nAlready sorted tests:");
console.log(bubbleSort([1, 2, 3, 4, 5, 6, 7]));

// 5. REVERSE SORTED
console.log("\nReverse sorted tests:");
console.log(bubbleSort([7, 6, 5, 4, 3, 2, 1]));

// 6. RANDOM VALUES
console.log("\nRandom values tests:");
console.log(bubbleSort([64, 34, 25, 12, 22, 11, 90]));

// 7. DUPLICATES
console.log("\nDuplicate values tests:");
console.log(bubbleSort([5, 1, 5, 3, 5, 2, 5]));

// 8. ALL SAME VALUES
console.log("\nAll same values tests:");
console.log(bubbleSort([7, 7, 7, 7, 7]));

// 9. NEGATIVE VALUES
console.log("\nNegative values tests:");
console.log(bubbleSort([-5, -1, -10, -3, -2]));

// 10. MIXED POSITIVE AND NEGATIVE
console.log("\nMixed values tests:");
console.log(bubbleSort([3, -1, 4, -5, 0, 2]));

// 11. LARGE INTEGERS
console.log("\nLarge integer tests:");
console.log(bubbleSort([Number.MIN_SAFE_INTEGER, Number.MAX_SAFE_INTEGER, 0, 1000000000, -1000000000]));

// 12. MANY DUPLICATES
console.log("\nMany duplicates tests:");
console.log(bubbleSort([4, 2, 4, 1, 4, 3, 4, 0, 4]));

// 13. MIXED ORDER
console.log("\nMixed order tests:");
console.log(bubbleSort([100, 1, 50, 2, 75, 3, 25]));
