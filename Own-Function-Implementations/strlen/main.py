def own_strlen(s: str) -> int:
    encoded_bytes = s.encode('utf-8')
    count = 0

    while count < len(encoded_bytes):
        count += 1

    return count


print(own_strlen("Nihad"))            # Expected: 5
print(own_strlen("Hello World"))      # Expected: 11
print(own_strlen("a"))                # Expected: 1

# Edge Cases
print(own_strlen(""))                 # Expected: 0
print(own_strlen(" "))                # Expected: 1
print(own_strlen("   "))              # Expected: 3
print(own_strlen("1234567890"))       # Expected: 10
print(own_strlen("!\n\t\r"))          # Expected: 4

# Multi-byte / UTF-8 Behavior (byte count)
print(own_strlen("😊"))               # Expected: 4
print(own_strlen("Bakı"))             # Expected: 5
