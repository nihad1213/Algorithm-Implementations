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