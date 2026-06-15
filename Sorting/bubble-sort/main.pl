#!/usr/bin/env perl

use strict;
use warnings;

# Bubble Sort is the simplest sorting algorithm that works by repeatedly swapping the adjacent
# elements if they are in the wrong order. This algorithm is not efficient for large data sets 
# as its average and worst-case time complexity are quite high.

# arr - the array to srot
# returns arr sorted array

# Best Case: O(n)
# Worst Case: O(n^2)
# Average Case: O(n^2)
# Space Complexity: O(1)

sub bubble_sort {
    my ($arr) = @_;
    my $n = scalar @$arr;

    for (my $i = 0; $i < $n - 1; $i++) {
        my $swapped = 0;

        for (my $j = 0; $j < $n - $i - 1; $j++) {
            if ($arr->[$j] > $arr->[$j + 1]) {
                
                ($arr->[$j], $arr->[$j + 1]) = ($arr->[$j + 1], $arr->[$j]);
                $swapped = 1;
            }
        }

        last unless $swapped;
    }

    return $arr;
}

# 1. EMPTY ARRAY
my $empty = [];

print "Empty array tests:\n";
use Data::Dumper;
print Dumper(bubble_sort($empty));


# 2. SINGLE ELEMENT
my $one = [999999999];

print "\nSingle element tests:\n";
print Dumper(bubble_sort($one));


# 3. TWO ELEMENTS
my $two = [20, 10];

print "\nTwo elements tests:\n";
print Dumper(bubble_sort($two));


# 4. ALREADY SORTED
my $sorted = [1, 2, 3, 4, 5, 6, 7];

print "\nAlready sorted tests:\n";
print Dumper(bubble_sort($sorted));


# 5. REVERSE SORTED
my $reverse = [7, 6, 5, 4, 3, 2, 1];

print "\nReverse sorted tests:\n";
print Dumper(bubble_sort($reverse));


# 6. RANDOM VALUES
my $random = [64, 34, 25, 12, 22, 11, 90];

print "\nRandom values tests:\n";
print Dumper(bubble_sort($random));


# 7. DUPLICATES
my $duplicates = [5, 1, 5, 3, 5, 2, 5];

print "\nDuplicate values tests:\n";
print Dumper(bubble_sort($duplicates));


# 8. ALL SAME VALUES
my $same = [7, 7, 7, 7, 7];

print "\nAll same values tests:\n";
print Dumper(bubble_sort($same));


# 9. NEGATIVE VALUES
my $negative = [-5, -1, -10, -3, -2];

print "\nNegative values tests:\n";
print Dumper(bubble_sort($negative));


# 10. MIXED VALUES
my $mixed = [3, -1, 4, -5, 0, 2];

print "\nMixed values tests:\n";
print Dumper(bubble_sort($mixed));


# 11. LARGE VALUES
my $large = [-2147483648, 2147483647, 0, 1000000000, -1000000000];

print "\nLarge integer tests:\n";
print Dumper(bubble_sort($large));


# 12. MANY DUPLICATES
my $many_dup = [4, 2, 4, 1, 4, 3, 4, 0, 4];

print "\nMany duplicates tests:\n";
print Dumper(bubble_sort($many_dup));