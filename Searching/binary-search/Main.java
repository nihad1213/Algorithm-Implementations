public class Main {
    
     /**
     * Binary search is a searching algorithm that find position of
     * a specific value within a sorted array. Instead of searching
     * every item one by one it repeatedly cuts the search are in
     * half.
     * 
     * @param int[] arr The array to search through
     * @param int target The value to search for
     * @return int The index of the target value, or -1 if not found
     * 
     * Best Case: O(1)
     * Worst Case: O(log n)
     * Average Case: O(log n)
     * Space Complexity: O(1)
     */

    public static int binarySearch(int[] arr, int target) {
        int left = 0;
        int right = arr.length - 1;

        while(left <= right) {
            int mid = left + (right - left) / 2;

            if(arr[mid] == target) {
                return mid;
            } else if(arr[mid] < target) {
                left = mid + 1;
            } else {
                right = mid - 1;
            }

        }

        return -1;
    }

    public static void main(String[] args) {

        System.out.println("EMPTY ARRAY");
        System.out.println(binarySearch(new int[]{}, 10));

        System.out.println("\nSINGLE ELEMENT");
        System.out.println(binarySearch(new int[]{999999999}, 999999999));
        System.out.println(binarySearch(new int[]{999999999}, 1));

        System.out.println("\nTWO ELEMENTS");
        System.out.println(binarySearch(new int[]{10, 20}, 10));
        System.out.println(binarySearch(new int[]{10, 20}, 20));
        System.out.println(binarySearch(new int[]{10, 20}, 15));

        System.out.println("\nLARGE INTEGERS");
        int[] largeVals = new int[]{
            Integer.MIN_VALUE,
            -1000000000,
            -500,
            0,
            500,
            1000000000,
            Integer.MAX_VALUE
        };

        System.out.println(binarySearch(largeVals, Integer.MIN_VALUE));
        System.out.println(binarySearch(largeVals, 0));
        System.out.println(binarySearch(largeVals, Integer.MAX_VALUE));
        System.out.println(binarySearch(largeVals, 123));

        System.out.println("\nDUPLICATES");
        int[] dup = new int[]{7, 7, 7, 7, 7, 7};
        System.out.println(binarySearch(dup, 7));
        System.out.println(binarySearch(dup, 8));

        System.out.println("\nNEGATIVE NUMBERS");
        int[] neg = new int[]{-50, -20, -10, -5, -1};
        System.out.println(binarySearch(neg, -10));
        System.out.println(binarySearch(neg, -51));

        System.out.println("\nLARGE ARRAY");
        int[] big = new int[100000];
        for (int i = 0; i < 100000; i++) {
            big[i] = i * 3;
        }

        System.out.println(binarySearch(big, 0));
        System.out.println(binarySearch(big, 3 * 50000));
        System.out.println(binarySearch(big, 123456789));
    }

}
