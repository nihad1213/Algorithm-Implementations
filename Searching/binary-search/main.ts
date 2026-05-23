"use strict";

/**
 * Binary search is a searching algorithm that find position of
 * a specific value within a sorted array. Instead of searching
 * every item one by one it repeatedly cuts the search are in
 * half.
 * 
 * param {Array<number>} arr - the array to search through
 * param {number} target - the value to search for
 * return {number} The index of the target value, or -1 if not found
 * 
 * Best Case: O(1)
 * Worst Case: O(log n)
 * Average Case: O(log n)
 * Space Complexity: O(1)
 */

function binarySearchTs(arr: number[], target: number): number {
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
console.log(binarySearchTs([], 10));

console.log("\nSINGLE ELEMENT");
console.log(binarySearchTs([999999999], 999999999));
console.log(binarySearchTs([999999999], 1));

console.log("\nTWO ELEMENTS");
console.log(binarySearchTs([10, 20], 10));
console.log(binarySearchTs([10, 20], 20));
console.log(binarySearchTs([10, 20], 15));

console.log("\nLARGE INTEGERS");
let largeValsTs: number[] = [
    Number.MIN_SAFE_INTEGER,
    -1000000000,
    -500,
    0,
    500,
    1000000000,
    Number.MAX_SAFE_INTEGER
];

console.log(binarySearchTs(largeValsTs, Number.MIN_SAFE_INTEGER));
console.log(binarySearchTs(largeValsTs, 0));
console.log(binarySearchTs(largeValsTs, Number.MAX_SAFE_INTEGER));
console.log(binarySearchTs(largeValsTs, 123));

console.log("\nDUPLICATES");
let dupTs: number[] = [7, 7, 7, 7, 7, 7];
console.log(binarySearchTs(dupTs, 7));
console.log(binarySearchTs(dupTs, 8));

console.log("\nNEGATIVE NUMBERS");
let negTs: number[] = [-50, -20, -10, -5, -1];
console.log(binarySearchTs(negTs, -10));
console.log(binarySearchTs(negTs, -51));

console.log("\nLARGE ARRAY");
let bigTs: number[] = [];
for (let i = 0; i < 100000; i++) {
    bigTs.push(i * 3);
}

console.log(binarySearchTs(bigTs, 0));
console.log(binarySearchTs(bigTs, 3 * 50000));
console.log(binarySearchTs(bigTs, 123456789));