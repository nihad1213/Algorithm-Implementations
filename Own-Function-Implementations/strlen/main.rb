def own_strlen(s)
    count = 0;
    
    while !s[count].nil?
        count += 1
    end
    
    return count
end


puts own_strlen("Nihad")                    # Expected: 5
puts own_strlen("Hello World")              # Expected: 11
puts own_strlen("a")                        # Expected: 1

# Edge Cases
puts own_strlen("")                         # Expected: 0
puts own_strlen(" ")                        # Expected: 1
puts own_strlen("   ")                      # Expected: 3
puts own_strlen("1234567890")               # Expected: 10
puts own_strlen("!\n\t\r")                  # Expected: 4

# Multi-byte / UTF-8 Behavior (byte count)
puts own_strlen("😊")                       # Expected: 4
puts own_strlen("Bakı")                     # Expected: 5
