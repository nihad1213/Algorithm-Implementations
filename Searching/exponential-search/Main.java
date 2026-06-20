class Main {

	/**
	 * Exponential Search is an efficient searching algorithm designed for sorted arrays that finds a
	 * target element by first finding a localized range and then performing a traditional binary search
	 * within that range. It is also known as doubling search, galloping search, or finger search
	 *
	 * @param int[] arr The sorted array to search through
	 * @param int   target The value to search for
	 *
	 * @return int The index of the target value, or -1 if not found
	 *
	 * Best Case: O(1)
	 * Worst Case: O(log(n))
	 * Average Case: O(log(n))
	 * Space Complexity: O(log(n))
	 */

	public static int binarySearch(int[] arr, int target, int low, int high) {
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

	public static int exponentialSearch(int[] arr, int target) {
		int size = arr.length;
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


	public static void main(String[] args) {
		// 1. EMPTY ARRAY
		int[] empty = {};

		System.out.println("Empty array tests:");
		System.out.println(exponentialSearch(empty, 10));

		// 2. SINGLE ELEMENT
		int[] one = {999999999};

		System.out.println("\nSingle element tests:");
		System.out.println(exponentialSearch(one, 999999999));
		System.out.println(exponentialSearch(one, 1));

		// 3. TWO ELEMENTS (boundary check)
		int[] two = {10, 20};

		System.out.println("\nTwo elements tests:");
		System.out.println(exponentialSearch(two, 10));
		System.out.println(exponentialSearch(two, 20));
		System.out.println(exponentialSearch(two, 15));

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
		System.out.println(exponentialSearch(largeVals, Integer.MIN_VALUE));
		System.out.println(exponentialSearch(largeVals, 0));
		System.out.println(exponentialSearch(largeVals, Integer.MAX_VALUE));
		System.out.println(exponentialSearch(largeVals, 123));

		// 5. LARGE ARRAY
		int[] big = new int[10000];

		for (int i = 0; i < 10000; i++) {
			big[i] = i * 3;
		}

		System.out.println("\nLarge array tests:");
		System.out.println(exponentialSearch(big, 0));
		System.out.println(exponentialSearch(big, 3 * 5000));
		System.out.println(exponentialSearch(big, 3 * 9999));
		System.out.println(exponentialSearch(big, 1234567));

		// 6. DUPLICATES
		int[] dup = {7, 7, 7, 7, 7, 7, 7};

		System.out.println("\nDuplicate values tests:");
		System.out.println(exponentialSearch(dup, 7));
		System.out.println(exponentialSearch(dup, 8));

		// 7. NEGATIVE NUMBERS
		int[] negatives = {-50, -20, -10, -5, -1};

		System.out.println("\nNegative numbers tests:");
		System.out.println(exponentialSearch(negatives, -10));
		System.out.println(exponentialSearch(negatives, -51));
	}
}