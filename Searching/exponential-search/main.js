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
function binarySearch(arr, target, low, high) {
    while (low <= high) {
        const mid = low + Math.floor((high - low) / 2);
        if (arr[mid] === target)
            return mid;
        else if (arr[mid] < target)
            low = mid + 1;
        else
            high = mid - 1;
    }
    return -1;
}

function exponentialSearch(arr, target) {
    const size = arr.length;
    if (size === 0)
        return -1;
    if (arr[0] === target)
        return 0;
    let bound = 1;
    while (bound < size && arr[bound] <= target) {
        bound *= 2;
    }
    const low = Math.floor(bound / 2);
    const high = Math.min(bound, size - 1);
    return binarySearch(arr, target, low, high);
}

// =========================
// TEST CASES
// =========================
console.log("EMPTY ARRAY");
console.log(exponentialSearch([], 10));
console.log("\nSINGLE ELEMENT");
console.log(exponentialSearch([999999999], 999999999));
console.log(exponentialSearch([999999999], 1));
console.log("\nTWO ELEMENTS");
console.log(exponentialSearch([10, 20], 10));
console.log(exponentialSearch([10, 20], 20));
console.log(exponentialSearch([10, 20], 15));
console.log("\nLARGE INTEGERS");
const largeVals = [
    -2147483648,
    -1000000000,
    -500,
    0,
    500,
    1000000000,
    2147483647
];
console.log(exponentialSearch(largeVals, -2147483648));
console.log(exponentialSearch(largeVals, 0));
console.log(exponentialSearch(largeVals, 2147483647));
console.log(exponentialSearch(largeVals, 123));
console.log("\nLARGE ARRAY");
const big = [];
for (let i = 0; i < 10000; i++) {
    big.push(i * 3);
}
console.log(exponentialSearch(big, 0));
console.log(exponentialSearch(big, 3 * 5000));
console.log(exponentialSearch(big, 3 * 9999));
console.log(exponentialSearch(big, 1234567));
console.log("\nDUPLICATES");
const dup = [7, 7, 7, 7, 7, 7, 7];
console.log(exponentialSearch(dup, 7));
console.log(exponentialSearch(dup, 8));
console.log("\nNEGATIVE NUMBERS");
const negatives = [-50, -20, -10, -5, -1];
console.log(exponentialSearch(negatives, -10));
console.log(exponentialSearch(negatives, -51));