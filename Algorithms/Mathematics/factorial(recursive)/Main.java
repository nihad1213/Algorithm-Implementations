public class Main {

    /**
     * Calculates the factorial of a number using recursion.
     * The factorial of a non-negative integer n is the product
     * of all positive integers less than or equal to n.
     *
     * @param n The non-negative integer whose factorial is to be calculated
     * @return long The factorial of n
     *
     * Best Case:    O(1)
     * Worst Case:   O(n)
     * Average Case: O(n)
     * Space Complexity: O(n)
     */

    public static long factorial(int n) {
        if (n == 0) {
            return 1;
        }

        return n * factorial(n - 1);
    }

    public static void main(String[] args) {
        long result = factorial(20);
        System.out.println(result);
    }

}