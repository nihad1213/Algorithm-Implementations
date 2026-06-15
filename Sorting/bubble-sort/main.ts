"use strict";

/**
 * Bubble Sort is the simplest sorting algorithm that works by repeatedly
 * swapping adjacent elements if they are in the wrong order.
 *
 * It repeatedly passes through the array until no swaps are needed.
 *
 * param {number[]} arr - the array of numbers to sort
 * return {number[]} The sorted array in ascending order
 *
 * Best Case:    O(n)
 * Worst Case:   O(n^2)
 * Average Case: O(n^2)
 * Space Complexity: O(1)
 */

function bubbleSortTs(arr: number[]): number[] {
    const n: number = arr.length;

    for (let i: number = 0; i < n - 1; i++) {
        let swapped: boolean = false;

        for (let j: number = 0; j < n - i - 1; j++) {
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
console.log(bubbleSortTs([]));

// 2. SINGLE ELEMENT
console.log("\nSingle element tests:");
console.log(bubbleSortTs([999999999]));

// 3. TWO ELEMENTS
console.log("\nTwo elements tests:");
console.log(bubbleSortTs([20, 10]));

// 4. ALREADY SORTED
console.log("\nAlready sorted tests:");
console.log(bubbleSortTs([1, 2, 3, 4, 5, 6, 7]));

// 5. REVERSE SORTED
console.log("\nReverse sorted tests:");
console.log(bubbleSortTs([7, 6, 5, 4, 3, 2, 1]));

// 6. RANDOM VALUES
console.log("\nRandom values tests:");
console.log(bubbleSortTs([64, 34, 25, 12, 22, 11, 90]));

// 7. DUPLICATES
console.log("\nDuplicate values tests:");
console.log(bubbleSortTs([5, 1, 5, 3, 5, 2, 5]));

// 8. ALL SAME VALUES
console.log("\nAll same values tests:");
console.log(bubbleSortTs([7, 7, 7, 7, 7]));

// 9. NEGATIVE VALUES
console.log("\nNegative values tests:");
console.log(bubbleSortTs([-5, -1, -10, -3, -2]));

// 10. MIXED POSITIVE AND NEGATIVE
console.log("\nMixed values tests:");
console.log(bubbleSortTs([3, -1, 4, -5, 0, 2]));

// 11. LARGE INTEGERS
console.log("\nLarge integer tests:");
console.log(bubbleSortTs([Number.MIN_SAFE_INTEGER, Number.MAX_SAFE_INTEGER, 0, 1000000000, -1000000000]));

// 12. MANY DUPLICATES
console.log("\nMany duplicates tests:");
console.log(bubbleSortTs([4, 2, 4, 1, 4, 3, 4, 0, 4]));

// 13. MIXED ORDER
console.log("\nMixed order tests:");
console.log(bubbleSortTs([100, 1, 50, 2, 75, 3, 25]));
