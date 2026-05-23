#include <iostream>
#include <vector>
#include <climits>

/**
 * Binary search is a searching algorithm that find position of
 * a specific value within a sorted array. Instead of searching
 * every item one by one it repeatedly cuts the search are in
 * half.
 * 
 * @param std::vector<int> v The vector to search through
 * @param target The value to search for
 * @return int The index of the target value, or -1 if not found
 * 
 * Best Case: O(1)
 * Worst Case: O(logn)
 * Average Case: O(logn)
 * Space Complexity: O(1)
 */

int binarySearch(std::vector<int> v, int target) {
    int left = 0;
    int right = v.size() - 1;

    while(left <= right) {
        int mid = left + (right - left) / 2;

        if(v[mid] == target) {
            return mid;
        }

        if(v[mid] < target) {
            left = mid + 1;
        } else {
            right = mid - 1;
        }
    }

    return -1;
}

int main() {
    // 1. EMPTY ARRAY (size = 0)
    std::vector<int> empty;
    std::cout << "Empty array tests:\n";
    std::cout << binarySearch(empty, 10) << "\n";

    // 2. SINGLE ELEMENT
    std::vector<int> one = {999999999};
    std::cout << "\nSingle element tests:\n";
    std::cout << binarySearch(one, 999999999) << "\n";
    std::cout << binarySearch(one, 1) << "\n";

    // 3. TWO ELEMENTS (boundary check)
    std::vector<int> two = {10, 20};
    std::cout << "\nTwo elements tests:\n";
    std::cout << binarySearch(two, 10) << "\n";
    std::cout << binarySearch(two, 20) << "\n";
    std::cout << binarySearch(two, 15) << "\n";

    // 4. LARGE INTEGERS (INT_MAX / INT_MIN)
    std::vector<int> largeVals = {
        INT_MIN,
        -1000000000,
        -500,
        0,
        500,
        1000000000,
        INT_MAX
    };

    std::cout << "\nLarge integer tests:\n";
    std::cout << binarySearch(largeVals, INT_MIN) << "\n";
    std::cout << binarySearch(largeVals, 0) << "\n";
    std::cout << binarySearch(largeVals, INT_MAX) << "\n";
    std::cout << binarySearch(largeVals, 123) << "\n";

    // 5. LARGE ARRAY (stress test)
    std::vector<int> big;
    for (int i = 0; i < 1000000; i++) {
        big.push_back(i * 3);
    }

    std::cout << "\nLarge array tests:\n";
    std::cout << binarySearch(big, 0) << "\n";
    std::cout << binarySearch(big, 3 * 500000) << "\n";
    std::cout << binarySearch(big, 3 * 999999) << "\n";
    std::cout << binarySearch(big, 1234567) << "\n";

    // 6. DUPLICATES (important edge case)
    std::vector<int> dup = {7, 7, 7, 7, 7, 7, 7};
    std::cout << "\nDuplicate values tests:\n";
    std::cout << binarySearch(dup, 7) << "\n";
    std::cout << binarySearch(dup, 8) << "\n";

    // 7. NEGATIVE NUMBERS
    std::vector<int> negatives = {-50, -20, -10, -5, -1};
    std::cout << "\nNegative numbers tests:\n";
    std::cout << binarySearch(negatives, -10) << "\n";
    std::cout << binarySearch(negatives, -51) << "\n";

    return 0;
}

