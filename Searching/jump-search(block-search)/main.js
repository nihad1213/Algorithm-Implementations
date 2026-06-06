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
function jumpSearch(arr, target) {
    const size = arr.length;
    if (size === 0)
        return -1;
    let step = Math.floor(Math.sqrt(size));
    let prev = 0;
    while (prev < size && arr[prev] < target) {
        let next = prev + step;
        if (next > size)
            next = size;
        if (arr[next - 1] >= target)
            break;
        prev = next;
        if (prev >= size)
            return -1;
    }
    const end = Math.min(prev + step, size);
    for (let i = prev; i < end; i++) {
        if (arr[i] === target)
            return i;
        if (arr[i] > target)
            return -1;
    }
    return -1;
}
// =========================
// TEST CASES
// =========================
console.log("EMPTY ARRAY");
console.log(jumpSearch([], 10));
console.log("\nSINGLE ELEMENT");
console.log(jumpSearch([999999999], 999999999));
console.log(jumpSearch([999999999], 1));
console.log("\nTWO ELEMENTS");
console.log(jumpSearch([10, 20], 10));
console.log(jumpSearch([10, 20], 20));
console.log(jumpSearch([10, 20], 15));
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
console.log(jumpSearch(largeVals, -2147483648));
console.log(jumpSearch(largeVals, 0));
console.log(jumpSearch(largeVals, 2147483647));
console.log(jumpSearch(largeVals, 123));
console.log("\nLARGE ARRAY");
const big = [];
for (let i = 0; i < 10000; i++) {
    big.push(i * 3);
}
console.log(jumpSearch(big, 0));
console.log(jumpSearch(big, 3 * 5000));
console.log(jumpSearch(big, 3 * 9999));
console.log(jumpSearch(big, 1234567));
console.log("\nDUPLICATES");
const dup = [7, 7, 7, 7, 7, 7, 7];
console.log(jumpSearch(dup, 7));
console.log(jumpSearch(dup, 8));
console.log("\nNEGATIVE NUMBERS");
const negatives = [-50, -20, -10, -5, -1];
console.log(jumpSearch(negatives, -10));
console.log(jumpSearch(negatives, -51));