#include <stdio.h>

int own_strlen(const char *s) {
    int count = 0;

    while (s[count] != '\0') {
        count++;
    }

    return count;
}

int main(void) {
    printf("%d\n", own_strlen("Nihad"));       // Expected: 5
    printf("%d\n", own_strlen("Hello World")); // Expected: 11
    printf("%d\n", own_strlen("a"));           // Expected: 1

    // Edge Cases
    printf("%d\n", own_strlen(""));            // Expected: 0
    printf("%d\n", own_strlen(" "));           // Expected: 1
    printf("%d\n", own_strlen("   "));         // Expected: 3
    printf("%d\n", own_strlen("1234567890"));  // Expected: 10
    printf("%d\n", own_strlen("!\n\t\r"));     // Expected: 4

    // Multi-byte / UTF-8 Behavior (byte count)
    printf("%d\n", own_strlen("😊"));          // Expected: 4
    printf("%d\n", own_strlen("Bakı"));        // Expected: 5

    return 0;
}
