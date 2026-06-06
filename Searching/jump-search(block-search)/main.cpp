#include <iostream>
#include <cmath>
#include <vector>
#include <climits>

/**
 * Jump Search (also known as block search) is a searching algorithm for
 * sorted arrays that checks fewer elements than a linear
 * search by jumping ahead by fixed steps.
 *
 * @param std::vector<int>& arr - The sorted array to search through.
 * @param int target - The value to search for.
 * @return int - The index of the target if found, otherwise -1.
 *
 * Best Case:    O(1)
 * Worst Case:   O(sqrt(n))
 * Average Case: O(sqrt(n))
 * Space Complexity: O(1)
 */
int jumpSearch(std::vector<int>& arr, int target) {
    int size = arr.size();
    if (size == 0) return -1;

    int step = static_cast<int>(std::sqrt(size));
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

    // 1. EMPTY ARRAY
    std::vector<int> empty;

    std::cout << "Empty array tests:\n";
    std::cout << jumpSearch(empty, 10) << "\n";

    // 2. SINGLE ELEMENT
    std::vector<int> one = {999999999};

    std::cout << "\nSingle element tests:\n";
    std::cout << jumpSearch(one, 999999999) << "\n";
    std::cout << jumpSearch(one, 1) << "\n";

    // 3. TWO ELEMENTS (boundary check)
    std::vector<int> two = {10, 20};

    std::cout << "\nTwo elements tests:\n";
    std::cout << jumpSearch(two, 10) << "\n";
    std::cout << jumpSearch(two, 20) << "\n";
    std::cout << jumpSearch(two, 15) << "\n";

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
    std::cout << jumpSearch(largeVals, INT_MIN) << "\n";
    std::cout << jumpSearch(largeVals, 0) << "\n";
    std::cout << jumpSearch(largeVals, INT_MAX) << "\n";
    std::cout << jumpSearch(largeVals, 123) << "\n";

    // 5. LARGE ARRAY (safe recursion size)
    std::vector<int> big;

    for (int i = 0; i < 10000; i++) {
        big.push_back(i * 3);
    }

    std::cout << "\nLarge array tests:\n";
    std::cout << jumpSearch(big, 0) << "\n";
    std::cout << jumpSearch(big, 3 * 5000) << "\n";
    std::cout << jumpSearch(big, 3 * 9999) << "\n";
    std::cout << jumpSearch(big, 1234567) << "\n";

    // 6. DUPLICATES
    std::vector<int> dup = {7, 7, 7, 7, 7, 7, 7};

    std::cout << "\nDuplicate values tests:\n";
    std::cout << jumpSearch(dup, 7) << "\n";
    std::cout << jumpSearch(dup, 8) << "\n";

    // 7. NEGATIVE NUMBERS
    std::vector<int> negatives = {-50, -20, -10, -5, -1};

    std::cout << "\nNegative numbers tests:\n";
    std::cout << jumpSearch(negatives, -10) << "\n";
    std::cout << jumpSearch(negatives, -51) << "\n";

    return 0;
}
