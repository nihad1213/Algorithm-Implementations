public class Main {
    /**
     * Linear Search
     *
     * Time Complexity:
     * Best: O(1)
     * Worst: O(n)
     * Average: O(n)
     */
    public static int linearSearch(int[] arr, int target) {
        for (int i = 0; i < arr.length; i++) {
            if (arr[i] == target) {
                return i;
            }
        }
        return -1;
    }

    public static void main(String[] args) {
        System.out.println(linearSearch(new int[]{1, 2, 3, 4, 5}, 3));
        System.out.println(linearSearch(new int[]{1, 2, 3, 4, 5}, 6));
        System.out.println(linearSearch(new int[]{}, 1));
        System.out.println(linearSearch(new int[]{1, 2, 3, 4, 5}, 1));
        System.out.println(linearSearch(new int[]{1, 2, 3, 4, 5}, 5));
    }
}
