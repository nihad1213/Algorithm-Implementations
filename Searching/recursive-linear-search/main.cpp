#include <iostream>
#include <vector>
#include <climits>

/**
 * Recursive linear search is a method for finding a specific target value within an array
 * by calling the same function repeatedly on smaller portions of the dataset until the target
 * is found or all elements are exhousted.
 *
 * @param std::vector<int> arr The array search through
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
int recursiveLinearSearch(std::vector<int> arr, int target, int index) {
	if (index == arr.size()) return -1;

	if (arr[index] == target) return index;

	return recursiveLinearSearch(arr, target, index + 1);
}

int main() {

    // 1. EMPTY ARRAY
    std::vector<int> empty;

    std::cout << "Empty array tests:\n";
    std::cout << recursiveLinearSearch(empty, 10, 0) << "\n";

    // 2. SINGLE ELEMENT
    std::vector<int> one = {999999999};

    std::cout << "\nSingle element tests:\n";
    std::cout << recursiveLinearSearch(one, 999999999, 0) << "\n";
    std::cout << recursiveLinearSearch(one, 1, 0) << "\n";

    // 3. TWO ELEMENTS (boundary check)
    std::vector<int> two = {10, 20};

    std::cout << "\nTwo elements tests:\n";
    std::cout << recursiveLinearSearch(two, 10, 0) << "\n";
    std::cout << recursiveLinearSearch(two, 20, 0) << "\n";
    std::cout << recursiveLinearSearch(two, 15, 0) << "\n";

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
    std::cout << recursiveLinearSearch(largeVals, INT_MIN, 0) << "\n";
    std::cout << recursiveLinearSearch(largeVals, 0, 0) << "\n";
    std::cout << recursiveLinearSearch(largeVals, INT_MAX, 0) << "\n";
    std::cout << recursiveLinearSearch(largeVals, 123, 0) << "\n";

    // 5. LARGE ARRAY (safe recursion size)
    std::vector<int> big;

    for (int i = 0; i < 10000; i++) {
        big.push_back(i * 3);
    }

    std::cout << "\nLarge array tests:\n";
    std::cout << recursiveLinearSearch(big, 0, 0) << "\n";
    std::cout << recursiveLinearSearch(big, 3 * 5000, 0) << "\n";
    std::cout << recursiveLinearSearch(big, 3 * 9999, 0) << "\n";
    std::cout << recursiveLinearSearch(big, 1234567, 0) << "\n";

    // 6. DUPLICATES
    std::vector<int> dup = {7, 7, 7, 7, 7, 7, 7};

    std::cout << "\nDuplicate values tests:\n";
    std::cout << recursiveLinearSearch(dup, 7, 0) << "\n";
    std::cout << recursiveLinearSearch(dup, 8, 0) << "\n";

    // 7. NEGATIVE NUMBERS
    std::vector<int> negatives = {-50, -20, -10, -5, -1};

    std::cout << "\nNegative numbers tests:\n";
    std::cout << recursiveLinearSearch(negatives, -10, 0) << "\n";
    std::cout << recursiveLinearSearch(negatives, -51, 0) << "\n";

    return 0;
}
