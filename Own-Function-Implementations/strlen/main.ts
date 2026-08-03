function own_strlenTs(s: string): number {
    const encoder = new TextEncoder();
    const bytes: Uint8Array = encoder.encode(s);
    let count: number = 0;

    while (bytes[count] !== undefined) {
        count++;
    }

    return count;
}

console.log(own_strlenTs("Nihad"));            // Expected: 5
console.log(own_strlenTs("Hello World"));      // Expected: 11
console.log(own_strlenTs("a"));                // Expected: 1

// Edge Cases
console.log(own_strlenTs(""));                 // Expected: 0
console.log(own_strlenTs(" "));                // Expected: 1
console.log(own_strlenTs("   "));              // Expected: 3
console.log(own_strlenTs("1234567890"));       // Expected: 10
console.log(own_strlenTs("!\n\t\r"));          // Expected: 4

// Multi-byte / UTF-8 Behavior (byte count)
console.log(own_strlenTs("😊"));               // Expected: 4
console.log(own_strlenTs("Bakı"));             // Expected: 5
