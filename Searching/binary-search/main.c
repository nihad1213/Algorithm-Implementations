#include <stdio.h>

/**
 * Binary search is a searching algorithm that find position of
 * a specific value within a sorted array. Instead of searching
 * every item one by one it repeatedly cuts the search are in
 * half.
 * 
 * @param arr The array to search through
 * @param size The size of the array
 * @param target The value to search for
 * @return int The index of the target value, or -1 if not found
 * 
 * Best Case: O(1)
 * Worst Case: O(logn)
 * Average Case: O(logn)
 * Space Complexity: O(1)
 */

int binarySearch(int arr[], int size, int target) {
    int left = 0;
    int right = size - 1;

    while (left <= right) {
        int mid = (left + right) / 2;

        if (arr[mid] == target) {
            return mid;
        }

        if (arr[mid] < target) {
            left = mid + 1;
        } else {
            right = mid - 1;
        }
    }

    return -1;
}

int main() {
    int arr1[] = {1, 2, 3, 4, 5};
    int arr2[] = {0};
    int arr3[] = {1, 2, 3, 4, 5};
    int arr4[] = {1, 2, 3, 4, 5};

    printf("%d\n", binarySearch(arr1, 5, 3));
    printf("%d\n", binarySearch(arr1, 5, 6));
    printf("%d\n", binarySearch(arr2, 0, 1));
    printf("%d\n", binarySearch(arr3, 5, 1));
    printf("%d\n", binarySearch(arr4, 5, 5));
}