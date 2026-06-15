import java.util.Arrays;

public class Main {

    /**
     * Bubble Sort is the simplest sorting algorithm that works by repeatedly
     * swapping adjacent elements if they are in the wrong order.
     *
     * It repeatedly passes through the array until no swaps are needed.
     *
     * @param arr The array of integers to sort
     * @return int[] The sorted array in ascending order
     *
     * Best Case:    O(n)
     * Worst Case:   O(n^2)
     * Average Case: O(n^2)
     * Space Complexity: O(1)
     */

    public static int[] bubbleSort(int[] arr) {
        int n = arr.length;

        for (int i = 0; i < n - 1; i++) {
            boolean swapped = false;

            for (int j = 0; j < n - i - 1; j++) {
                if (arr[j] > arr[j + 1]) {
                    int temp = arr[j];
                    arr[j] = arr[j + 1];
                    arr[j + 1] = temp;
                    swapped = true;
                }
            }

            if (!swapped) break;
        }

        return arr;
    }

    public static void main(String[] args) {
        // 1. EMPTY ARRAY
        System.out.println("Empty array tests:");
        System.out.println(Arrays.toString(bubbleSort(new int[]{})));

        // 2. SINGLE ELEMENT
        System.out.println("\nSingle element tests:");
        System.out.println(Arrays.toString(bubbleSort(new int[]{999999999})));

        // 3. TWO ELEMENTS
        System.out.println("\nTwo elements tests:");
        System.out.println(Arrays.toString(bubbleSort(new int[]{20, 10})));

        // 4. ALREADY SORTED
        System.out.println("\nAlready sorted tests:");
        System.out.println(Arrays.toString(bubbleSort(new int[]{1, 2, 3, 4, 5, 6, 7})));

        // 5. REVERSE SORTED
        System.out.println("\nReverse sorted tests:");
        System.out.println(Arrays.toString(bubbleSort(new int[]{7, 6, 5, 4, 3, 2, 1})));

        // 6. RANDOM VALUES
        System.out.println("\nRandom values tests:");
        System.out.println(Arrays.toString(bubbleSort(new int[]{64, 34, 25, 12, 22, 11, 90})));

        // 7. DUPLICATES
        System.out.println("\nDuplicate values tests:");
        System.out.println(Arrays.toString(bubbleSort(new int[]{5, 1, 5, 3, 5, 2, 5})));

        // 8. ALL SAME VALUES
        System.out.println("\nAll same values tests:");
        System.out.println(Arrays.toString(bubbleSort(new int[]{7, 7, 7, 7, 7})));

        // 9. NEGATIVE VALUES
        System.out.println("\nNegative values tests:");
        System.out.println(Arrays.toString(bubbleSort(new int[]{-5, -1, -10, -3, -2})));

        // 10. MIXED POSITIVE AND NEGATIVE
        System.out.println("\nMixed values tests:");
        System.out.println(Arrays.toString(bubbleSort(new int[]{3, -1, 4, -5, 0, 2})));

        // 11. LARGE INTEGERS
        System.out.println("\nLarge integer tests:");
        System.out.println(Arrays.toString(bubbleSort(new int[]{Integer.MIN_VALUE, Integer.MAX_VALUE, 0, 1000000000, -1000000000})));

        // 12. MANY DUPLICATES
        System.out.println("\nMany duplicates tests:");
        System.out.println(Arrays.toString(bubbleSort(new int[]{4, 2, 4, 1, 4, 3, 4, 0, 4})));

        // 13. MIXED ORDER
        System.out.println("\nMixed order tests:");
        System.out.println(Arrays.toString(bubbleSort(new int[]{100, 1, 50, 2, 75, 3, 25})));
    }

}
