class Main {

	/**
	 * Jump Search (also known as block search) is a searching algorithm for
	 * sorted arrays that checks fewer elements than a linear
	 * search by jumping ahead by fixed steps.
	 *
	 * @param int[] arr The sorted array to search through
	 * @param int   target The value to search for
	 *
	 * @return int The index of the target value, or -1 if not found
	 *
	 * Best Case: O(1)
	 * Worst Case: O(sqrt(n))
	 * Average Case: O(sqrt(n))
	 * Space Complexity: O(1)
	 */

	public static int jumpSearch(int[] arr, int target) {
		int size = arr.length;
		if (size == 0) return -1;

		int step = (int) Math.sqrt(size);
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
			if (arr[i] > target)  return -1;
		}

		return -1;
	}


	public static void main(String[] args) {
		// 1. EMPTY ARRAY
		int[] empty = {};

		System.out.println("Empty array tests:");
		System.out.println(jumpSearch(empty, 10));

		// 2. SINGLE ELEMENT
		int[] one = {999999999};

		System.out.println("\nSingle element tests:");
		System.out.println(jumpSearch(one, 999999999));
		System.out.println(jumpSearch(one, 1));

		// 3. TWO ELEMENTS (boundary check)
		int[] two = {10, 20};

		System.out.println("\nTwo elements tests:");
		System.out.println(jumpSearch(two, 10));
		System.out.println(jumpSearch(two, 20));
		System.out.println(jumpSearch(two, 15));

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
		System.out.println(jumpSearch(largeVals, Integer.MIN_VALUE));
		System.out.println(jumpSearch(largeVals, 0));
		System.out.println(jumpSearch(largeVals, Integer.MAX_VALUE));
		System.out.println(jumpSearch(largeVals, 123));

		// 5. LARGE ARRAY
		int[] big = new int[10000];

		for (int i = 0; i < 10000; i++) {
			big[i] = i * 3;
		}

		System.out.println("\nLarge array tests:");
		System.out.println(jumpSearch(big, 0));
		System.out.println(jumpSearch(big, 3 * 5000));
		System.out.println(jumpSearch(big, 3 * 9999));
		System.out.println(jumpSearch(big, 1234567));

		// 6. DUPLICATES
		int[] dup = {7, 7, 7, 7, 7, 7, 7};

		System.out.println("\nDuplicate values tests:");
		System.out.println(jumpSearch(dup, 7));
		System.out.println(jumpSearch(dup, 8));

		// 7. NEGATIVE NUMBERS
		int[] negatives = {-50, -20, -10, -5, -1};

		System.out.println("\nNegative numbers tests:");
		System.out.println(jumpSearch(negatives, -10));
		System.out.println(jumpSearch(negatives, -51));
	}
}