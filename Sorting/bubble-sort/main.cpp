#include <iostream>
#include <vector>
#include <climits>

/**
 * Bubble Sort is the simplest sorting algorithm that works by repeatedly
 * swapping adjacent elements if they are in the wrong order.
 *
 * It repeatedly passes through the array until no swaps are needed.
 *
 * @param std::vector<int> v The vector of integers to sort
 * @return std::vector<int> The sorted vector in ascending order
 *
 * Best Case:    O(n)
 * Worst Case:   O(n^2)
 * Average Case: O(n^2)
 * Space Complexity: O(1)
 */

std::vector<int> bubbleSort(std::vector<int> v) {
    int n = v.size();

    for (int i = 0; i < n - 1; i++) {
        bool swapped = false;

        for (int j = 0; j < n - i - 1; j++) {
            if (v[j] > v[j + 1]) {
                std::swap(v[j], v[j + 1]);
                swapped = true;
            }
        }

        if (!swapped) break;
    }

    return v;
}

void printVector(const std::vector<int>& v) {
    std::cout << "[";
    for (int i = 0; i < (int)v.size(); i++) {
        std::cout << v[i];
        if (i < (int)v.size() - 1) std::cout << ", ";
    }
    std::cout << "]\n";
}

int main() {
    // 1. EMPTY ARRAY
    std::vector<int> empty;
    std::cout << "Empty array tests:\n";
    printVector(bubbleSort(empty));

    // 2. SINGLE ELEMENT
    std::vector<int> one = {999999999};
    std::cout << "\nSingle element tests:\n";
    printVector(bubbleSort(one));

    // 3. TWO ELEMENTS
    std::vector<int> two = {20, 10};
    std::cout << "\nTwo elements tests:\n";
    printVector(bubbleSort(two));

    // 4. ALREADY SORTED
    std::vector<int> sorted = {1, 2, 3, 4, 5, 6, 7};
    std::cout << "\nAlready sorted tests:\n";
    printVector(bubbleSort(sorted));

    // 5. REVERSE SORTED
    std::vector<int> reverse = {7, 6, 5, 4, 3, 2, 1};
    std::cout << "\nReverse sorted tests:\n";
    printVector(bubbleSort(reverse));

    // 6. RANDOM VALUES
    std::vector<int> random = {64, 34, 25, 12, 22, 11, 90};
    std::cout << "\nRandom values tests:\n";
    printVector(bubbleSort(random));

    // 7. DUPLICATES
    std::vector<int> duplicates = {5, 1, 5, 3, 5, 2, 5};
    std::cout << "\nDuplicate values tests:\n";
    printVector(bubbleSort(duplicates));

    // 8. ALL SAME VALUES
    std::vector<int> sameValues = {7, 7, 7, 7, 7};
    std::cout << "\nAll same values tests:\n";
    printVector(bubbleSort(sameValues));

    // 9. NEGATIVE VALUES
    std::vector<int> negativeVals = {-5, -1, -10, -3, -2};
    std::cout << "\nNegative values tests:\n";
    printVector(bubbleSort(negativeVals));

    // 10. MIXED POSITIVE AND NEGATIVE
    std::vector<int> mixedVals = {3, -1, 4, -5, 0, 2};
    std::cout << "\nMixed values tests:\n";
    printVector(bubbleSort(mixedVals));

    // 11. LARGE INTEGERS
    std::vector<int> largeVals = {INT_MIN, INT_MAX, 0, 1000000000, -1000000000};
    std::cout << "\nLarge integer tests:\n";
    printVector(bubbleSort(largeVals));

    // 12. MANY DUPLICATES
    std::vector<int> manyDuplicates = {4, 2, 4, 1, 4, 3, 4, 0, 4};
    std::cout << "\nMany duplicates tests:\n";
    printVector(bubbleSort(manyDuplicates));

    // 13. MIXED ORDER
    std::vector<int> mixedOrder = {100, 1, 50, 2, 75, 3, 25};
    std::cout << "\nMixed order tests:\n";
    printVector(bubbleSort(mixedOrder));

    return 0;
}
