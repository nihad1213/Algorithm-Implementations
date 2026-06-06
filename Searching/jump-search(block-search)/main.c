#include <stdio.h>
#include <math.h>

/**
 * Jump Search (also known as block search) is a searching algorithm for
 * sorted arrays that checks fewer elements than a linear
 * search by jumping ahead by fixed steps.
 *
 * @param int arr[] - The sorted array to search through.
 * @param int size  - The size of the array.
 * @param int target - The value to search for.
 * @return int - The index of the target if found, otherwise -1.
 *
 * Best Case:    O(1)
 * Worst Case:   O(sqrt(n))
 * Average Case: O(sqrt(n))
 * Space Complexity: O(1)
 */
int jumpSearch(int arr[], int size, int target) {
    if (size == 0 || arr == NULL) return -1;

    int step = (int)sqrt((double)size);
    int prev = 0;

    while (prev < size && arr[prev] < target) {
        int next = prev + step;

        if (next > size) next = size;

        if (arr[next - 1] >= target) break;

        prev = next;

        if (prev >= size) return -1;
    }

    int end = prev + step;
    if (end > size) end = size;

    for (int i = prev; i < end; i++) {
        if (arr[i] == target) return i;
        if (arr[i] > target) return -1;
    }

    return -1;
}

int main() {
    int *empty = NULL;
    int emptySize = 0;

    printf("Empty array tests:\n");
    printf("%d\n", jumpSearch(empty, emptySize, 10));

    int one[] = {999999999};
    int oneSize = 1;

    printf("\nSingle element tests:\n");
    printf("%d\n", jumpSearch(one, oneSize, 999999999));
    printf("%d\n", jumpSearch(one, oneSize, 1));

    int two[] = {10, 20};
    int twoSize = 2;

    printf("\nTwo elements tests:\n");
    printf("%d\n", jumpSearch(two, twoSize, 10));
    printf("%d\n", jumpSearch(two, twoSize, 20));
    printf("%d\n", jumpSearch(two, twoSize, 15));

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
    printf("%d\n", jumpSearch(largeVals, largeSize, -2147483648));
    printf("%d\n", jumpSearch(largeVals, largeSize, 0));
    printf("%d\n", jumpSearch(largeVals, largeSize, 2147483647));
    printf("%d\n", jumpSearch(largeVals, largeSize, 123));

    int big[10000];
    for (int i = 0; i < 10000; i++) big[i] = i * 3;
    int bigSize = 10000;

    printf("\nLarge array tests:\n");
    printf("%d\n", jumpSearch(big, bigSize, 0));
    printf("%d\n", jumpSearch(big, bigSize, 3 * 5000));
    printf("%d\n", jumpSearch(big, bigSize, 3 * 9999));
    printf("%d\n", jumpSearch(big, bigSize, 1234567));

    int dup[] = {7, 7, 7, 7, 7, 7, 7};
    int dupSize = 7;

    printf("\nDuplicate values tests:\n");
    printf("%d\n", jumpSearch(dup, dupSize, 7));
    printf("%d\n", jumpSearch(dup, dupSize, 8));

    int negatives[] = {-50, -20, -10, -5, -1};
    int negSize = 5;

    printf("\nNegative numbers tests:\n");
    printf("%d\n", jumpSearch(negatives, negSize, -10));
    printf("%d\n", jumpSearch(negatives, negSize, -51));
}