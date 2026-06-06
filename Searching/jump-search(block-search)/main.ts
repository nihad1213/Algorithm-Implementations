"use strict";

/**
 * Jump Search (also known as block search) is a searching algorithm for
 * sorted arrays that checks fewer elements than a linear
 * search by jumping ahead by fixed steps.
 *
 * @param {Array<number>} arr - The sorted array to search through
 * @param {number} target - The value to search for
 *
 * @returns {number} The index of the target value, or -1 if not found
 *
 * Complexity:
 * Best Case:    O(1)
 * Worst Case:   O(sqrt(n))
 * Average Case: O(sqrt(n))
 * Space Complexity: O(1)
 */

function jumpSearchTs(arr: number[], target: number): number {
    const size: number = arr.length;
    if (size === 0) return -1;

    let step: number = Math.floor(Math.sqrt(size));
    let prev: number = 0;

    while (prev < size && arr[prev] < target) {
        let next: number = prev + step;

        if (next > size) next = size;

        if (arr[next - 1] >= target) break;

        prev = next;

        if (prev >= size) return -1;
    }

    const end: number = Math.min(prev + step, size);

    for (let i: number = prev; i < end; i++) {
        if (arr[i] === target) return i;
        if (arr[i] > target)   return -1;
    }

    return -1;
}

// =========================
// TEST CASES
// =========================

console.log("EMPTY ARRAY");
console.log(jumpSearchTs([], 10));

console.log("\nSINGLE ELEMENT");
console.log(jumpSearchTs([999999999], 999999999));
console.log(jumpSearchTs([999999999], 1));

console.log("\nTWO ELEMENTS");
console.log(jumpSearchTs([10, 20], 10));
console.log(jumpSearchTs([10, 20], 20));
console.log(jumpSearchTs([10, 20], 15));

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

console.log(jumpSearchTs(largeValsTs, -2147483648));
console.log(jumpSearchTs(largeValsTs, 0));
console.log(jumpSearchTs(largeValsTs, 2147483647));
console.log(jumpSearchTs(largeValsTs, 123));

console.log("\nLARGE ARRAY");
const bigTs: number[] = [];

for (let i: number = 0; i < 10000; i++) {
    bigTs.push(i * 3);
}

console.log(jumpSearchTs(bigTs, 0));
console.log(jumpSearchTs(bigTs, 3 * 5000));
console.log(jumpSearchTs(bigTs, 3 * 9999));
console.log(jumpSearchTs(bigTs, 1234567));

console.log("\nDUPLICATES");
const dupTs: number[] = [7, 7, 7, 7, 7, 7, 7];
console.log(jumpSearchTs(dupTs, 7));
console.log(jumpSearchTs(dupTs, 8));

console.log("\nNEGATIVE NUMBERS");
const negativesTs: number[] = [-50, -20, -10, -5, -1];
console.log(jumpSearchTs(negativesTs, -10));
console.log(jumpSearchTs(negativesTs, -51));