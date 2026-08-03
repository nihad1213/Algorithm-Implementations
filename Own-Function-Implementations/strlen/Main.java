import java.nio.charset.StandardCharsets;

public class Main {

    public static int ownStrlen(String s) {
        byte[] bytes = s.getBytes(StandardCharsets.UTF_8);
        int count = 0;

        for (byte b : bytes) {
            count++;
        }

        return count;
    }

    public static void main(String[] args) {
        System.out.println(ownStrlen("Nihad"));       // Expected: 5
        System.out.println(ownStrlen("Hello World")); // Expected: 11
        System.out.println(ownStrlen("a"));           // Expected: 1

        // Edge Cases
        System.out.println(ownStrlen(""));            // Expected: 0
        System.out.println(ownStrlen(" "));           // Expected: 1
        System.out.println(ownStrlen("   "));         // Expected: 3
        System.out.println(ownStrlen("1234567890"));  // Expected: 10
        System.out.println(ownStrlen("!\n\t\r"));     // Expected: 4

        // Multi-byte / UTF-8 Behavior (byte count)
        System.out.println(ownStrlen("😊"));          // Expected: 4
        System.out.println(ownStrlen("Bakı"));        // Expected: 5
    }
}
