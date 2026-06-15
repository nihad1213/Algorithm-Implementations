#include <stdio.h>

/**
 * Bubble Sort is the simplest sorting algorithm that works by repeatedly
 * swapping adjacent elements if they are in the wrong order.
 *
 * It repeatedly passes through the array until no swaps are needed.
 *
 * @param arr  The array of integers to sort (sorted in place)
 * @param size The number of elements in the array
 *
 * Best Case:    O(n)
 * Worst Case:   O(n^2)
 * Average Case: O(n^2)
 * Space Complexity: O(1)
 */

void bubbleSort(int arr[], int size) {
    for (int i = 0; i < size - 1; i++) {
        int swapped = 0;

        for (int j = 0; j < size - i - 1; j++) {
            if (arr[j] > arr[j + 1]) {
                int temp = arr[j];
                arr[j] = arr[j + 1];
                arr[j + 1] = temp;
                swapped = 1;
            }
        }

        if (!swapped) break;
    }
}

void printArray(int arr[], int size) {
    printf("[");
    for (int i = 0; i < size; i++) {
        printf("%d", arr[i]);
        if (i < size - 1) printf(", ");
    }
    printf("]\n");
}

int main() {
    // 1. EMPTY ARRAY
    printf("Empty array tests:\n");
    printArray(NULL, 0);

    // 2. SINGLE ELEMENT
    int one[] = {999999999};
    printf("\nSingle element tests:\n");
    bubbleSort(one, 1);
    printArray(one, 1);

    // 3. TWO ELEMENTS
    int two[] = {20, 10};
    printf("\nTwo elements tests:\n");
    bubbleSort(two, 2);
    printArray(two, 2);

    // 4. ALREADY SORTED
    int sorted[] = {1, 2, 3, 4, 5, 6, 7};
    printf("\nAlready sorted tests:\n");
    bubbleSort(sorted, 7);
    printArray(sorted, 7);

    // 5. REVERSE SORTED
    int reverse[] = {7, 6, 5, 4, 3, 2, 1};
    printf("\nReverse sorted tests:\n");
    bubbleSort(reverse, 7);
    printArray(reverse, 7);

    // 6. RANDOM VALUES
    int random[] = {64, 34, 25, 12, 22, 11, 90};
    printf("\nRandom values tests:\n");
    bubbleSort(random, 7);
    printArray(random, 7);

    // 7. DUPLICATES
    int duplicates[] = {5, 1, 5, 3, 5, 2, 5};
    printf("\nDuplicate values tests:\n");
    bubbleSort(duplicates, 7);
    printArray(duplicates, 7);

    // 8. ALL SAME VALUES
    int sameValues[] = {7, 7, 7, 7, 7};
    printf("\nAll same values tests:\n");
    bubbleSort(sameValues, 5);
    printArray(sameValues, 5);

    // 9. NEGATIVE VALUES
    int negativeVals[] = {-5, -1, -10, -3, -2};
    printf("\nNegative values tests:\n");
    bubbleSort(negativeVals, 5);
    printArray(negativeVals, 5);

    // 10. MIXED POSITIVE AND NEGATIVE
    int mixedVals[] = {3, -1, 4, -5, 0, 2};
    printf("\nMixed values tests:\n");
    bubbleSort(mixedVals, 6);
    printArray(mixedVals, 6);

    // 11. LARGE INTEGERS
    int largeVals[] = {-2147483648, 2147483647, 0, 1000000000, -1000000000};
    printf("\nLarge integer tests:\n");
    bubbleSort(largeVals, 5);
    printArray(largeVals, 5);

    // 12. MANY DUPLICATES
    int manyDuplicates[] = {4, 2, 4, 1, 4, 3, 4, 0, 4};
    printf("\nMany duplicates tests:\n");
    bubbleSort(manyDuplicates, 9);
    printArray(manyDuplicates, 9);

    // 13. MIXED ORDER
    int mixedOrder[] = {100, 1, 50, 2, 75, 3, 25};
    printf("\nMixed order tests:\n");
    bubbleSort(mixedOrder, 7);
    printArray(mixedOrder, 7);

    return 0;
}
