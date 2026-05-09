#include <stdio.h>

/**
 * Linear search, or sequential search,
 * * is the simplest method for finding a
 * specific value within a collection of data.
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

int linearSearch(int arr[], int size, int target) {
    for (int i = 0; i < size; i++) {
        if (arr[i] == target) {
            return i;
        }
    }

    return -1;
}

int main() {

    int arr1[] = {1, 2, 3, 4, 5};
    int arr2[] = {0};
    int arr3[] = {1, 2, 3, 4, 5};
    int arr4[] = {1, 2, 3, 4, 5};

    printf("%d\n", linearSearch(arr1, 5, 3));
    printf("%d\n", linearSearch(arr1, 5, 6));
    printf("%d\n", linearSearch(arr2, 0, 1));
    printf("%d\n", linearSearch(arr3, 5, 1));
    printf("%d\n", linearSearch(arr4, 5, 5));

    return 0;
}