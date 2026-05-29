#include <stdio.h>

/**
 * Recursive linear search is a method for finding a specific target value within an array
 * by calling the same function repeatedly on smaller portions of the dataset until the target
 * is found or all elements are exhousted.
 *
 * @param int arr The array search through
 * @param int size The size of array
 * @param int target The value search for
 * @param int index The current position in the array
 * 
 * @return int The index of target value, or return -1 if not found
 *
 * Best Case: O(1)
 * Worst Case: O(n)
 * Average Case: O(n)
 * Space Complexity: O(n)
 */
int recursiveLinearSearch(int arr[], int size, int target, int index) {
	if (index == size) return -1;

	if (arr[index] == target) return index;

	return recursiveLinearSearch(arr, size, target, index + 1);
}

int main() {

    // 1. EMPTY ARRAY (size = 0)
    int *empty = NULL;
    int emptySize = 0;

    printf("Empty array tests:\n");
    printf("%d\n", recursiveLinearSearch(empty, emptySize, 10, 0));

    // 2. SINGLE ELEMENT
    int one[] = {999999999};
    int oneSize = 1;

    printf("\nSingle element tests:\n");
    printf("%d\n", recursiveLinearSearch(one, oneSize, 999999999, 0));
    printf("%d\n", recursiveLinearSearch(one, oneSize, 1, 0));

    // 3. TWO ELEMENTS (boundary check)
    int two[] = {10, 20};
    int twoSize = 2;

    printf("\nTwo elements tests:\n");
    printf("%d\n", recursiveLinearSearch(two, twoSize, 10, 0));
    printf("%d\n", recursiveLinearSearch(two, twoSize, 20, 0));
    printf("%d\n", recursiveLinearSearch(two, twoSize, 15, 0));

    // 4. LARGE INTEGERS (INT limits style test)
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
    printf("%d\n", recursiveLinearSearch(largeVals, largeSize, -2147483648, 0));
    printf("%d\n", recursiveLinearSearch(largeVals, largeSize, 0, 0));
    printf("%d\n", recursiveLinearSearch(largeVals, largeSize, 2147483647, 0));
    printf("%d\n", recursiveLinearSearch(largeVals, largeSize, 123, 0));

    // 5. LARGE ARRAY (stress test)
    int big[10000];

    for (int i = 0; i < 10000; i++) {
        big[i] = i * 3;
    }

    int bigSize = 10000;

    printf("\nLarge array tests:\n");
    printf("%d\n", recursiveLinearSearch(big, bigSize, 0, 0));
    printf("%d\n", recursiveLinearSearch(big, bigSize, 3 * 500000, 0));
    printf("%d\n", recursiveLinearSearch(big, bigSize, 3 * 999999, 0));
    printf("%d\n", recursiveLinearSearch(big, bigSize, 1234567, 0));

    // 6. DUPLICATES (first occurrence test)
    int dup[] = {7, 7, 7, 7, 7, 7, 7};
    int dupSize = 7;

    printf("\nDuplicate values tests:\n");
    printf("%d\n", recursiveLinearSearch(dup, dupSize, 7, 0));
    printf("%d\n", recursiveLinearSearch(dup, dupSize, 8, 0));

    // 7. NEGATIVE NUMBERS
    int negatives[] = {-50, -20, -10, -5, -1};
    int negSize = 5;

    printf("\nNegative numbers tests:\n");
    printf("%d\n", recursiveLinearSearch(negatives, negSize, -10, 0));
    printf("%d\n", recursiveLinearSearch(negatives, negSize, -51, 0));

    return 0;
}
