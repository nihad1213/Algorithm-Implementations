#include <stdio.h>
#include <math.h>

/**
 * Exponential Search is an efficient searching algorithm designed for sorted arrays that finds a
 * target element by first finding a localized range and then performing a traditional binary search
 * within that range. It is also known as doubling search, galloping search, or finger search
 *
 * @param int arr[] - The sorted array to search through.
 * @param int size  - The size of the array.
 * @param int target - The value to search for.
 * @return int - The index of the target if found, otherwise -1.
 *
 * Best Case:    O(1)
 * Worst Case:   O(log(n))
 * Average Case: O(log(n))
 * Space Complexity: O(log(n))
 */

int binarySearch(int arr[], int target, int low, int high) {
    while (low <= high) {
        int mid = low + (high - low) / 2;

        if (arr[mid] == target) {
            return mid;
        } else if (arr[mid] < target) {
            low = mid + 1;
        } else {
            high = mid - 1;
        }
    }

    return -1;
}

int exponentialSearch(int arr[], int size, int target) {
    if (size == 0 || arr == NULL) return -1;

    if (arr[0] == target) return 0;

    int bound = 1;

    while (bound < size && arr[bound] <= target) {
        bound *= 2;
    }

    int low = bound / 2;
    int high = (bound < size - 1) ? bound : size - 1;

    return binarySearch(arr, target, low, high);
}

int main() {
    int *empty = NULL;
    int emptySize = 0;

    printf("Empty array tests:\n");
    printf("%d\n", exponentialSearch(empty, emptySize, 10));

    int one[] = {999999999};
    int oneSize = 1;

    printf("\nSingle element tests:\n");
    printf("%d\n", exponentialSearch(one, oneSize, 999999999));
    printf("%d\n", exponentialSearch(one, oneSize, 1));

    int two[] = {10, 20};
    int twoSize = 2;

    printf("\nTwo elements tests:\n");
    printf("%d\n", exponentialSearch(two, twoSize, 10));
    printf("%d\n", exponentialSearch(two, twoSize, 20));
    printf("%d\n", exponentialSearch(two, twoSize, 15));

    int largeVals[] = {
        -2147483648,
        -1000000000,
        -500,
        0,
        500,
        1000000000,
        2147483647
    };
    int largeSize = 7;

    printf("\nLarge integer tests:\n");
    printf("%d\n", exponentialSearch(largeVals, largeSize, -2147483648));
    printf("%d\n", exponentialSearch(largeVals, largeSize, 0));
    printf("%d\n", exponentialSearch(largeVals, largeSize, 2147483647));
    printf("%d\n", exponentialSearch(largeVals, largeSize, 123));

    int big[10000];
    for (int i = 0; i < 10000; i++) big[i] = i * 3;
    int bigSize = 10000;

    printf("\nLarge array tests:\n");
    printf("%d\n", exponentialSearch(big, bigSize, 0));
    printf("%d\n", exponentialSearch(big, bigSize, 3 * 5000));
    printf("%d\n", exponentialSearch(big, bigSize, 3 * 9999));
    printf("%d\n", exponentialSearch(big, bigSize, 1234567));

    int dup[] = {7, 7, 7, 7, 7, 7, 7};
    int dupSize = 7;

    printf("\nDuplicate values tests:\n");
    printf("%d\n", exponentialSearch(dup, dupSize, 7));
    printf("%d\n", exponentialSearch(dup, dupSize, 8));

    int negatives[] = {-50, -20, -10, -5, -1};
    int negSize = 5;

    printf("\nNegative numbers tests:\n");
    printf("%d\n", exponentialSearch(negatives, negSize, -10));
    printf("%d\n", exponentialSearch(negatives, negSize, -51));
}