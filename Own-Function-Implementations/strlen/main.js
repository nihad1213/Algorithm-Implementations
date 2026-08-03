function own_strlen(s) {
    const encoder = new TextEncoder();
    const bytes = encoder.encode(s);
    let count = 0;

    while (bytes[count] !== undefined) {
        count++;
    }

    return count;
}

console.log(own_strlen("Nihad"));            // Expected: 5
console.log(own_strlen("Hello World"));      // Expected: 11
console.log(own_strlen("a"));                // Expected: 1

// Edge Cases
console.log(own_strlen(""));                 // Expected: 0
console.log(own_strlen(" "));                // Expected: 1
console.log(own_strlen("   "));              // Expected: 3
console.log(own_strlen("1234567890"));       // Expected: 10
console.log(own_strlen("!\n\t\r"));          // Expected: 4

// Multi-byte / UTF-8 Behavior (byte count)
console.log(own_strlen("😊"));               // Expected: 4
console.log(own_strlen("Bakı"));             // Expected: 5
