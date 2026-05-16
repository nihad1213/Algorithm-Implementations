public class Main {

    /**
     * Sentinel Linear Search is an optimized version of the linear search algorithm.
     * Number of comparisons is reduced by using a sentinel value to mark the end of the array.
     * 
     * @param int[] arr The array to search through
     * @param int target The value to search for
     * @return int The index of the target value, or -1 if not found
     * 
     * Best Case: O(1)
     * Worst Case: O(n)
     * Average Case: O(n)
     * Space Complexity: O(1)
     */

    public static int sentinelLinearSearch(int[] arr, int target) {
        
        if (arr.length == 0) return -1;
        
        int last = arr[arr.length - 1];
        arr[arr.length - 1] = target;

        int i = 0;

        while(arr[i] != target) { 
            i++;
        }

        arr[arr.length - 1] = last;

        if((i < arr.length - 1) || (arr[arr.length - 1] == target)) {
            return i;
        }

        return -1;
    }

    public static void main(String[] args) {
        System.out.println(sentinelLinearSearch(new int[]{1, 2, 3, 4, 5}, 3));
        System.out.println(sentinelLinearSearch(new int[]{1, 2, 3, 4, 5}, 6));
        System.out.println(sentinelLinearSearch(new int[]{}, 1));
        System.out.println(sentinelLinearSearch(new int[]{1, 2, 3, 4, 5}, 1));
        System.out.println(sentinelLinearSearch(new int[]{1, 2, 3, 4, 5}, 5));
    }
}