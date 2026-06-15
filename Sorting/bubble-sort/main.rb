# Bubble Sort is the simplest sorting algorithm that works by repeatedly swapping the adjacent
# elements if they are in the wrong order. This algorithm is not efficient for large data sets 
# as its average and worst-case time complexity are quite high.

# arr - the array to srot
# returns arr sorted array

# Best Case: O(n)
# Worst Case: O(n^2)
# Average Case: O(n^2)
# Space Complexity: O(1)


def bubble_sort(arr)

    return arr if arr.size <= 1

    loop do
        swapped = false

        (arr.size - 1).times do |i|
            if arr[i] > arr[i + 1]
                arr[i], arr[i + 1] = arr[i + 1], arr[i]
                swapped = true
            end
        end

        break unless swapped

    end

    return arr
end

# 1. EMPTY ARRAY
empty = []

puts "Empty array tests:"
p bubble_sort(empty)


# 2. SINGLE ELEMENT
one = [999999999]

puts "\nSingle element tests:"
p bubble_sort(one)


# 3. TWO ELEMENTS
two = [20, 10]

puts "\nTwo elements tests:"
p bubble_sort(two)


# 4. ALREADY SORTED
sorted_arr = [1, 2, 3, 4, 5, 6, 7]

puts "\nAlready sorted tests:"
p bubble_sort(sorted_arr)


# 5. REVERSE SORTED
reverse_arr = [7, 6, 5, 4, 3, 2, 1]

puts "\nReverse sorted tests:"
p bubble_sort(reverse_arr)


# 6. RANDOM VALUES
random_arr = [64, 34, 25, 12, 22, 11, 90]

puts "\nRandom values tests:"
p bubble_sort(random_arr)


# 7. DUPLICATES
duplicates = [5, 1, 5, 3, 5, 2, 5]

puts "\nDuplicate values tests:"
p bubble_sort(duplicates)


# 8. ALL SAME VALUES
same_values = [7, 7, 7, 7, 7]

puts "\nAll same values tests:"
p bubble_sort(same_values)


# 9. NEGATIVE VALUES
negative_vals = [-5, -1, -10, -3, -2]

puts "\nNegative values tests:"
p bubble_sort(negative_vals)


# 10. MIXED POSITIVE AND NEGATIVE
mixed_vals = [3, -1, 4, -5, 0, 2]

puts "\nMixed values tests:"
p bubble_sort(mixed_vals)


# 11. LARGE INTEGERS
large_vals = [-2147483648, 2147483647, 0, 1000000000, -1000000000]

puts "\nLarge integer tests:"
p bubble_sort(large_vals)


# 12. MANY DUPLICATES
many_duplicates = [4, 2, 4, 1, 4, 3, 4, 0, 4]

puts "\nMany duplicates tests:"
p bubble_sort(many_duplicates)


# 13. FLOATING POINT NUMBERS
floats = [3.14, 1.41, 2.71, 0.57]

puts "\nFloating point tests:"
p bubble_sort(floats)


# 14. MIXED ORDER
mixed_order = [100, 1, 50, 2, 75, 3, 25]

puts "\nMixed order tests:"
p bubble_sort(mixed_order)

