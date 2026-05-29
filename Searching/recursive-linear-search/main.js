"use strict";

/**
 * Recursive linear search is a method for finding a specific target value within an array
 * by calling the same function repeatedly on smaller portions of the dataset until the target
 * is found or all elements are exhausted.
 *
 * @param {Array<number>} arr - The array to search through
 * @param {number} target - The value to search for
 * @param {number} index - Current position in the array (start from 0)
 *
 * @returns {number} The index of the target value, or -1 if not found
 *
 * Complexity:
 * Best Case: O(1)
 * Worst Case: O(n)
 * Average Case: O(n)
 * Space Complexity: O(n) (recursion stack)
 */

function recursiveLinearSearch(arr, target, index) {
    if (index === arr.length) {
        return -1;
    }

    if (arr[index] === target) {
        return index;
    }

    return recursiveLinearSearch(arr, target, index + 1);
}

// =========================
// TEST CASES
// =========================

console.log("EMPTY ARRAY");
console.log(recursiveLinearSearch([], 10, 0));

console.log("\nSINGLE ELEMENT");
console.log(recursiveLinearSearch([42], 42, 0));
console.log(recursiveLinearSearch([42], 99, 0));

console.log("\nTWO ELEMENTS");
console.log(recursiveLinearSearch([10, 20], 10, 0));
console.log(recursiveLinearSearch([10, 20], 20, 0));
console.log(recursiveLinearSearch([10, 20], 15, 0));

console.log("\nSMALL ARRAY");
const smallArr = [5, 1, 9, 3, 7];
console.log(recursiveLinearSearch(smallArr, 9, 0));
console.log(recursiveLinearSearch(smallArr, 7, 0));
console.log(recursiveLinearSearch(smallArr, 100, 0));

console.log("\nDUPLICATES");
const dupArr = [7, 7, 7, 7];
console.log(recursiveLinearSearch(dupArr, 7, 0));
console.log(recursiveLinearSearch(dupArr, 8, 0));

console.log("\nNEGATIVE NUMBERS");
const negArr = [-10, -5, -2, 0];
console.log(recursiveLinearSearch(negArr, -2, 0));
console.log(recursiveLinearSearch(negArr, -99, 0));
