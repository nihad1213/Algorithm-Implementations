#include <iostream>
#include <vector>

/**
 * Linear search, or sequential search,
 * is the simplest method for finding a
 * specific value within a collection of data.
 *
 * @param std::vector<int> v The vector to search through
 * @param int target The value to search for
 * @return int The index of the target value, or -1 if not found
 *
 * Best Case: O(1)
 * Worst Case: O(n)
 * Average Case: O(n)
 * Space Complexity: O(1)
 */

int linearSearch(std::vector<int> v, int target) {

    for (int i = 0; i < v.size(); i++) {

        if (v[i] == target) {
            return i;
        }
    }

    return -1;
}

int main() {

    std::vector<int> arr1 = {1, 2, 3, 4, 5};
    std::vector<int> arr2 = {};
    std::vector<int> arr3 = {1, 2, 3, 4, 5};
    std::vector<int> arr4 = {1, 2, 3, 4, 5};

    std::cout << linearSearch(arr1, 3) << std::endl;
    std::cout << linearSearch(arr1, 6) << std::endl;
    std::cout << linearSearch(arr2, 1) << std::endl;
    std::cout << linearSearch(arr3, 1) << std::endl;
    std::cout << linearSearch(arr4, 5) << std::endl;

    return 0;
}
