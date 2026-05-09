/**
 * Linear search, or sequential search,
 * is the simplest method for finding a
 * specific value within a collection of data.
 * 
 * param {Array} arr - the array to search through
 * param {mixed} target - the value to search for
 * return {number} The index of the target value, or -1 if not found
 * 
 * Best Case: O(1) - when the target is the first element
 * Worst Case: O(n) - when the target is the last element
 * Average Case: O(n) - when the target is somewhere in the middle
 * Space Complexity: O(1) - no additional space is used 
 */

function linearSearchTs(arr: any[], target: any): number {
    for (let i = 0; i < arr.length; i++) {
        if (arr[i] === target) {
            return i;
        }
    }
    return -1;
}

console.log(linearSearchTs([1, 2, 3, 4, 5], 3));
console.log(linearSearchTs([1, 2, 3, 4, 5], 6));
console.log(linearSearchTs([], 1));
console.log(linearSearchTs([1, 2, 3, 4, 5], 1));
console.log(linearSearchTs([1, 2, 3, 4, 5], 5));