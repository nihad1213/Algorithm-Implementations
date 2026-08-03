#include <iostream>

int own_strlen(const char* s) {
    int count = 0;

    while (s[count] != '\0') {
        count++;
    }

    return count;
}

int main() {
    std::cout << own_strlen("Nihad") << "\n";       // Expected: 5
    std::cout << own_strlen("Hello World") << "\n"; // Expected: 11
    std::cout << own_strlen("a") << "\n";           // Expected: 1

    // Edge Cases
    std::cout << own_strlen("") << "\n";            // Expected: 0
    std::cout << own_strlen(" ") << "\n";           // Expected: 1
    std::cout << own_strlen("   ") << "\n";         // Expected: 3
    std::cout << own_strlen("1234567890") << "\n";  // Expected: 10
    std::cout << own_strlen("!\n\t\r") << "\n";     // Expected: 4

    // Multi-byte / UTF-8 Behavior (byte count)
    std::cout << own_strlen("😊") << "\n";          // Expected: 4
    std::cout << own_strlen("Bakı") << "\n";        // Expected: 5

    return 0;
}
