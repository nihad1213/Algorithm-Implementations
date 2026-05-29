class Main {

	/**
 	 * Recursive linear search is a method for finding a specific target value within an array
 	 * by calling the same function repeatedly on smaller portions of the dataset until the target
 	 * is found or all elements are exhousted.
 	 *
 	 * @param int arr The array search through
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

	public static int recursiveLinearSearch(int[] arr, int target, int index) {
		if (index == arr.length) return -1;

		if (arr[index] == target) return index;

		return recursiveLinearSearch(arr, target, index + 1);
	}


	public static void main(String[] args) {
		// 1. EMPTY ARRAY
		int[] empty = {};

		System.out.println("Empty array tests:");
		System.out.println(recursiveLinearSearch(empty, 10, 0));

		// 2. SINGLE ELEMENT
		int[] one = {999999999};

		System.out.println("\nSingle element tests:");
		System.out.println(recursiveLinearSearch(one, 999999999, 0));
		System.out.println(recursiveLinearSearch(one, 1, 0));

		// 3. TWO ELEMENTS (boundary check)
		int[] two = {10, 20};

		System.out.println("\nTwo elements tests:");
		System.out.println(recursiveLinearSearch(two, 10, 0));
		System.out.println(recursiveLinearSearch(two, 20, 0));
		System.out.println(recursiveLinearSearch(two, 15, 0));

		// 4. LARGE INTEGERS
		int[] largeVals = {
			Integer.MIN_VALUE,
			-1000000000,
			-500,
			0,
			500,
			1000000000,
			Integer.MAX_VALUE
		};

		System.out.println("\nLarge integer tests:");
		System.out.println(recursiveLinearSearch(largeVals, Integer.MIN_VALUE, 0));
		System.out.println(recursiveLinearSearch(largeVals, 0, 0));
		System.out.println(recursiveLinearSearch(largeVals, Integer.MAX_VALUE, 0));
		System.out.println(recursiveLinearSearch(largeVals, 123, 0));

		// 5. LARGE ARRAY (safe recursion size)
		int[] big = new int[500];

		for (int i = 0; i < 500; i++) {
			big[i] = i * 3;
		}

		System.out.println("\nLarge array tests:");
		System.out.println(recursiveLinearSearch(big, 0, 0));
		System.out.println(recursiveLinearSearch(big, 3 * 250, 0));
		System.out.println(recursiveLinearSearch(big, 3 * 499, 0));
		System.out.println(recursiveLinearSearch(big, 1234567, 0));

		// 6. DUPLICATES
		int[] dup = {7, 7, 7, 7, 7, 7, 7};

		System.out.println("\nDuplicate values tests:");
		System.out.println(recursiveLinearSearch(dup, 7, 0));
		System.out.println(recursiveLinearSearch(dup, 8, 0));

		// 7. NEGATIVE NUMBERS
		int[] negatives = {-50, -20, -10, -5, -1};

		System.out.println("\nNegative numbers tests:");
		System.out.println(recursiveLinearSearch(negatives, -10, 0));
		System.out.println(recursiveLinearSearch(negatives, -51, 0));
		
	}
}
