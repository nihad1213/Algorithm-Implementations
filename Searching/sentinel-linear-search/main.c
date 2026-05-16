#include <stdio.h>

/**
 * Sentinel Linear Search is an optimized version of the linear search algorithm.
 * Number of comparisons is reduced by using a sentinel value to mark the end of the array.
 * 
 * @param int arr[] The array to search through
 * @param int size The size of the array
 * @param int target The value to search for
 * @return int The index of the target value, or -1 if not found
 * 
 * Best Case: O(1)
 * Worst Case: O(n)
 * Average Case: O(n)
 * Space Complexity: O(1)
 */

int sentinelLinearSearch(int arr[], int size, int target) {
    int last = arr[size - 1];

    arr[size - 1] = target;
    int i = 0;
    
    while(arr[i] != target) {
        i++;
    }

    arr[size - 1] = last;

    if ((i < size - 1) || (arr[size - 1] == target)) {
        return i;
    }

    return -1;
}


int main() {
    int arr1[] = {1, 2, 3, 4, 5};
    int arr2[] = {0};
    int arr3[] = {1, 2, 3, 4, 5};
    int arr4[] = {1, 2, 3, 4, 5};

    printf("%d\n", sentinelLinearSearch(arr1, 5, 3));
    printf("%d\n", sentinelLinearSearch(arr1, 5, 6));
    printf("%d\n", sentinelLinearSearch(arr2, 0, 1));
    printf("%d\n", sentinelLinearSearch(arr3, 5, 1));
    printf("%d\n", sentinelLinearSearch(arr4, 5, 5));
}