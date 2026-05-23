"use strict";

/**
 * Binary search is a searching algorithm that find position of
 * a specific value within a sorted array. Instead of searching
 * every item one by one it repeatedly cuts the search are in
 * half.
 * 
 * param {Array} arr - the array to search through
 * param {mixed} target - the value to search for
 * return {number} The index of the target value, or -1 if not found
 * 
 * Best Case: O(1)
 * Worst Case: O(log n)
 * Average Case: O(log n)
 * Space Complexity: O(1)
 */

function binarySearch(arr, target) {
    let left = 0;
    let right = arr.length - 1;

    while (left <= right) {
        const mid = Math.floor((left + right) / 2);

        if (arr[mid] === target) {
            return mid;
        } else if (arr[mid] < target) {
            left = mid + 1;
        } else {
            right = mid - 1;
        }
    }

    return -1;
}

console.log("EMPTY ARRAY");
console.log(binarySearch([], 10));

console.log("\nSINGLE ELEMENT");
console.log(binarySearch([999999999], 999999999));
console.log(binarySearch([999999999], 1));

console.log("\nTWO ELEMENTS");
console.log(binarySearch([10, 20], 10));
console.log(binarySearch([10, 20], 20));
console.log(binarySearch([10, 20], 15));

console.log("\nLARGE INTEGERS");
let largeVals = [
    Number.MIN_SAFE_INTEGER,
    -1000000000,
    -500,
    0,
    500,
    1000000000,
    Number.MAX_SAFE_INTEGER
];

console.log(binarySearch(largeVals, Number.MIN_SAFE_INTEGER));
console.log(binarySearch(largeVals, 0));
console.log(binarySearch(largeVals, Number.MAX_SAFE_INTEGER));
console.log(binarySearch(largeVals, 123));

console.log("\nDUPLICATES");
let dup = [7, 7, 7, 7, 7, 7];
console.log(binarySearch(dup, 7));
console.log(binarySearch(dup, 8));

console.log("\nNEGATIVE NUMBERS");
let neg = [-50, -20, -10, -5, -1];
console.log(binarySearch(neg, -10));
console.log(binarySearch(neg, -51));

console.log("\nLARGE ARRAY");
let big = [];
for (let i = 0; i < 100000; i++) {
    big.push(i * 3);
}

console.log(binarySearch(big, 0));
console.log(binarySearch(big, 3 * 50000));
console.log(binarySearch(big, 123456789));