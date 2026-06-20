"use strict";

/**
 * Exponential Search is an efficient searching algorithm designed for sorted arrays that finds a
 * target element by first finding a localized range and then performing a traditional binary search
 * within that range. It is also known as doubling search, galloping search, or finger search
 *
 * @param {Array<number>} arr - The sorted array to search through
 * @param {number} target - The value to search for
 *
 * @returns {number} The index of the target value, or -1 if not found
 *
 * Complexity:
 * Best Case:    O(1)
 * Worst Case:   O(log(n))
 * Average Case: O(log(n))
 * Space Complexity: O(log(n))
 */

function binarySearchTs(arr: number[], target: number, low: number, high: number): number {
    while (low <= high) {
        const mid: number = low + Math.floor((high - low) / 2);

        if (arr[mid] === target) return mid;
        else if (arr[mid] < target) low = mid + 1;
        else high = mid - 1;
    }

    return -1;
}

function exponentialSearchTs(arr: number[], target: number): number {
    const size: number = arr.length;
    if (size === 0) return -1;

    if (arr[0] === target) return 0;

    let bound: number = 1;

    while (bound < size && arr[bound] <= target) {
        bound *= 2;
    }

    const low: number = Math.floor(bound / 2);
    const high: number = Math.min(bound, size - 1);

    return binarySearchTs(arr, target, low, high);
}

// =========================
// TEST CASES
// =========================

console.log("EMPTY ARRAY");
console.log(exponentialSearchTs([], 10));

console.log("\nSINGLE ELEMENT");
console.log(exponentialSearchTs([999999999], 999999999));
console.log(exponentialSearchTs([999999999], 1));

console.log("\nTWO ELEMENTS");
console.log(exponentialSearchTs([10, 20], 10));
console.log(exponentialSearchTs([10, 20], 20));
console.log(exponentialSearchTs([10, 20], 15));

console.log("\nLARGE INTEGERS");
const largeValsTs: number[] = [
    -2147483648,
    -1000000000,
    -500,
    0,
    500,
    1000000000,
    2147483647
];

console.log(exponentialSearchTs(largeValsTs, -2147483648));
console.log(exponentialSearchTs(largeValsTs, 0));
console.log(exponentialSearchTs(largeValsTs, 2147483647));
console.log(exponentialSearchTs(largeValsTs, 123));

console.log("\nLARGE ARRAY");
const bigTs: number[] = [];

for (let i: number = 0; i < 10000; i++) {
    bigTs.push(i * 3);
}

console.log(exponentialSearchTs(bigTs, 0));
console.log(exponentialSearchTs(bigTs, 3 * 5000));
console.log(exponentialSearchTs(bigTs, 3 * 9999));
console.log(exponentialSearchTs(bigTs, 1234567));

console.log("\nDUPLICATES");
const dupTs: number[] = [7, 7, 7, 7, 7, 7, 7];
console.log(exponentialSearchTs(dupTs, 7));
console.log(exponentialSearchTs(dupTs, 8));

console.log("\nNEGATIVE NUMBERS");
const negativesTs: number[] = [-50, -20, -10, -5, -1];
console.log(exponentialSearchTs(negativesTs, -10));
console.log(exponentialSearchTs(negativesTs, -51));