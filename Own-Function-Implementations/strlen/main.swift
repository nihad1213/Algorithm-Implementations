func own_strlen(s: String) -> Int {
    var count = 0
    
    for _ in s.utf8 {
        count += 1
    }
    
    return count
}

print(own_strlen(s: "Nihad"))        // 5
print(own_strlen(s: "Hello World"))  // 11
print(own_strlen(s: "a"))            // 1

// Edge Cases
print(own_strlen(s: ""))             // 0
print(own_strlen(s: " "))            // 1
print(own_strlen(s: "   "))          // 3
print(own_strlen(s: "1234567890"))   // 10
print(own_strlen(s: "!\n\t\r"))      // 4

// Multi-byte / UTF-8 Behavior
print(own_strlen(s: "😊"))           // 4 (UTF-8 bytes)
print(own_strlen(s: "Bakı"))         // 5 (UTF-8 bytes)
