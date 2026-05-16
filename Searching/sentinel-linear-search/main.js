/**
 * Sentinel Linear Search is an optimized version of the linear search algorithm.
 * Number of comparisons is reduced by using a sentinel value to mark the end of the array.
 * 
 * param {Array} arr - the array to search through
 * param {mixed} target - the value to search for
 * return {number} The index of the target value, or -1 if not found
 * 
 * Best Case: O(1)
 * Worst Case: O(n)
 * Average Case: O(n)
 * Space Complexity: O(1)
 */

function sentinelLinearSearch(arr, target) {
    const size = arr.length;
    
    if (size === 0) return -1;

    let last = arr[size - 1];

    arr[size - 1] = target;

    let i = 0;

    while (arr[i] !== target) {
        i++;
    }

    arr[size - 1] = last;

    if (i < size - 1 || arr[size - 1] === target) {
        return i;
    }

    return -1;
}

console.log(sentinelLinearSearch([1, 2, 3, 4, 5], 3));
console.log(sentinelLinearSearch([1, 2, 3, 4, 5], 6));
console.log(sentinelLinearSearch([], 1));
console.log(sentinelLinearSearch([1, 2, 3, 4, 5], 1));
console.log(sentinelLinearSearch([1, 2, 3, 4, 5], 5));