use strict;
use warnings;
use Data::Dumper;

# Recursive linear search is a method for finding a specific target value within an array
# by calling the same function repeatedly on smaller portions of the dataset until the target
# is found or all elements are exhausted.
#
# Instead of using loops, it moves through the array using recursion.
#
# arr    - array reference to search through
# target - value to search for
# index  - current position in the array
#
# returns index of target value, or -1 if not found
#
# Best Case: O(1)
# Worst Case: O(n)
# Average Case: O(n)
# Space Complexity: O(n) (due to recursion stack)

sub recursive_linear_search {
	my ($arr, $target, $index) = @_;
	
	return -1 if $index == scalar(@$arr);

    	return $index if $arr->[$index] == $target;

    	return recursive_linear_search($arr, $target, $index + 1);
}

print "EMPTY ARRAY\n";
print recursive_linear_search([], 10, 0), "\n";

print "\nSINGLE ELEMENT\n";
print recursive_linear_search([999999999], 999999999, 0), "\n";
print recursive_linear_search([999999999], 1, 0), "\n";

print "\nTWO ELEMENTS\n";
print recursive_linear_search([10, 20], 10, 0), "\n";
print recursive_linear_search([10, 20], 20, 0), "\n";
print recursive_linear_search([10, 20], 15, 0), "\n";

print "\nLARGE INTEGERS\n";
my $large_vals = [
    -2147483648,
    -1000000000,
    -500,
    0,
    500,
    1000000000,
    2147483647
];

print recursive_linear_search($large_vals, -2147483648, 0), "\n";
print recursive_linear_search($large_vals, 0, 0), "\n";
print recursive_linear_search($large_vals, 2147483647, 0), "\n";
print recursive_linear_search($large_vals, 123, 0), "\n";

print "\nDUPLICATES\n";
my $dup = [7, 7, 7, 7, 7, 7];

print recursive_linear_search($dup, 7, 0), "\n";
print recursive_linear_search($dup, 8, 0), "\n";

print "\nNEGATIVE NUMBERS\n";
my $negatives = [-50, -20, -10, -5, -1];

print recursive_linear_search($negatives, -10, 0), "\n";
print recursive_linear_search($negatives, -51, 0), "\n";

print "\nLARGE ARRAY\n";
my @big;

for my $i (0..999) {
    push @big, $i * 3;
}

print recursive_linear_search(\@big, 0, 0), "\n";
print recursive_linear_search(\@big, 3 * 500, 0), "\n";
print recursive_linear_search(\@big, 3 * 999, 0), "\n";
print recursive_linear_search(\@big, 1234567, 0), "\n";
