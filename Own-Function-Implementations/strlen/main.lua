function own_strlen(s)
    local count = 0
    local index = 1

    while string.byte(s, index) ~= nil do
        count = count + 1
        index = index + 1
    end

    return count
end

-- Tests
print(own_strlen("Nihad"))        -- Output: 5
print(own_strlen("Hello World"))  -- Output: 11
print(own_strlen("a"))            -- Output: 1

-- Edge Cases
print(own_strlen(""))             -- Output: 0
print(own_strlen(" "))            -- Output: 1
print(own_strlen("   "))          -- Output: 3
print(own_strlen("1234567890"))   -- Output: 10
print(own_strlen("!\n\t\r"))      -- Output: 4

-- Multi-byte / UTF-8 Behavior (byte count)
print(own_strlen("😊"))           -- Output: 4
print(own_strlen("Bakı"))         -- Output: 5
