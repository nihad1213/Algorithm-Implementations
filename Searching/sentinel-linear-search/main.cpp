#include <iostream>
#include <vector>

/**
 * Sentinel Linear Search is an optimized version of the linear search algorithm.
 * Number of comparisons is reduced by using a sentinel value to mark the end of the array.
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

int sentinelLinearSearch(std::vector<int> arr, int target) {
    if (arr.size() == 0) return -1;

    int last = arr[arr.size() - 1];
    
    arr[arr.size() - 1] = target;
    int i = 0;

    while(arr[i] != target) {
        i++;
    }

    arr[arr.size() - 1] = last;

    if ((i < arr.size() - 1) || (arr[arr.size() - 1] == target)) {
        return i;
    }

    return -1;
}

int main() {
    std::vector<int> arr1 = {1, 2, 3, 4, 5};
    std::vector<int> arr2 = {};
    std::vector<int> arr3 = {1, 2, 3, 4, 5};
    std::vector<int> arr4 = {1, 2, 3, 4, 5};

    std::cout << sentinelLinearSearch(arr1, 3) << std::endl;
    std::cout << sentinelLinearSearch(arr1, 6) << std::endl;
    std::cout << sentinelLinearSearch(arr2, 1) << std::endl;
    std::cout << sentinelLinearSearch(arr3, 1) << std::endl;
    std::cout << sentinelLinearSearch(arr4, 5) << std::endl;

    return 0;
}