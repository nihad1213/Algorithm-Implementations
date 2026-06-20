#include <iostream>
#include <cmath>
#include <vector>
#include <climits>

/**
 * Exponential Search is an efficient searching algorithm designed for sorted arrays that finds a
 * target element by first finding a localized range and then performing a traditional binary search
 * within that range. It is also known as doubling search, galloping search, or finger search
 *
 * @param std::vector<int>& arr - The sorted array to search through.
 * @param int target - The value to search for.
 * @return int - The index of the target if found, otherwise -1.
 *
 * Best Case:    O(1)
 * Worst Case:   O(log(n))
 * Average Case: O(log(n))
 * Space Complexity: O(log(n))
 */

int binarySearch(std::vector<int>& arr, int target, int low, int high) {
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

int exponentialSearch(std::vector<int>& arr, int target) {
    int size = arr.size();
    if (size == 0) return -1;

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

    // 1. EMPTY ARRAY
    std::vector<int> empty;

    std::cout << "Empty array tests:\n";
    std::cout << exponentialSearch(empty, 10) << "\n";

    // 2. SINGLE ELEMENT
    std::vector<int> one = {999999999};

    std::cout << "\nSingle element tests:\n";
    std::cout << exponentialSearch(one, 999999999) << "\n";
    std::cout << exponentialSearch(one, 1) << "\n";

    // 3. TWO ELEMENTS (boundary check)
    std::vector<int> two = {10, 20};

    std::cout << "\nTwo elements tests:\n";
    std::cout << exponentialSearch(two, 10) << "\n";
    std::cout << exponentialSearch(two, 20) << "\n";
    std::cout << exponentialSearch(two, 15) << "\n";

    // 4. LARGE INTEGERS
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
    std::cout << exponentialSearch(largeVals, INT_MIN) << "\n";
    std::cout << exponentialSearch(largeVals, 0) << "\n";
    std::cout << exponentialSearch(largeVals, INT_MAX) << "\n";
    std::cout << exponentialSearch(largeVals, 123) << "\n";

    // 5. LARGE ARRAY
    std::vector<int> big;

    for (int i = 0; i < 10000; i++) {
        big.push_back(i * 3);
    }

    std::cout << "\nLarge array tests:\n";
    std::cout << exponentialSearch(big, 0) << "\n";
    std::cout << exponentialSearch(big, 3 * 5000) << "\n";
    std::cout << exponentialSearch(big, 3 * 9999) << "\n";
    std::cout << exponentialSearch(big, 1234567) << "\n";

    // 6. DUPLICATES
    std::vector<int> dup = {7, 7, 7, 7, 7, 7, 7};

    std::cout << "\nDuplicate values tests:\n";
    std::cout << exponentialSearch(dup, 7) << "\n";
    std::cout << exponentialSearch(dup, 8) << "\n";

    // 7. NEGATIVE NUMBERS
    std::vector<int> negatives = {-50, -20, -10, -5, -1};

    std::cout << "\nNegative numbers tests:\n";
    std::cout << exponentialSearch(negatives, -10) << "\n";
    std::cout << exponentialSearch(negatives, -51) << "\n";

    return 0;
}