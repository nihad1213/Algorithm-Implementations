use strict;
use warnings;

# Binary search is a searching algorithm that find position of
# a specific value within a sorted array. Instead of searching
# every item one by one it repeatedly cuts the search area in
# half.
#
# arr - array reference to search through
# target - value to search for
# returns index of target value, or -1 if not found
#
# Best Case: O(1)
# Worst Case: O(log n)
# Average Case: O(log n)
# Space Complexity: O(1)

sub binary_search {
    my ($arr, $target) = @_;

    my $left = 0;
    my $right = scalar(@$arr) - 1;

    while ($left <= $right) {
        my $mid = int($left + ($right - $left) / 2);

        if ($arr->[$mid] == $target) {
            return $mid;
        }
        elsif ($arr->[$mid] < $target) {
            $left = $mid + 1;
        }
        else {
            $right = $mid - 1;
        }
    }

    return -1;
}

print "EMPTY ARRAY\n";
print binary_search([], 10), "\n";

print "\nSINGLE ELEMENT\n";
print binary_search([999999999], 999999999), "\n";
print binary_search([999999999], 1), "\n";

print "\nTWO ELEMENTS\n";
print binary_search([10, 20], 10), "\n";
print binary_search([10, 20], 20), "\n";
print binary_search([10, 20], 15), "\n";

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

print binary_search($large_vals, -2147483648), "\n";
print binary_search($large_vals, 0), "\n";
print binary_search($large_vals, 2147483647), "\n";
print binary_search($large_vals, 123), "\n";

print "\nDUPLICATES\n";
my $dup = [7, 7, 7, 7, 7, 7];
print binary_search($dup, 7), "\n";
print binary_search($dup, 8), "\n";

print "\nNEGATIVE NUMBERS\n";
my $neg = [-50, -20, -10, -5, -1];
print binary_search($neg, -10), "\n";
print binary_search($neg, -51), "\n";

print "\nLARGE ARRAY\n";
my @big;
for (my $i = 0; $i < 100000; $i++) {
    push @big, $i * 3;
}

print binary_search(\@big, 0), "\n";
print binary_search(\@big, 3 * 50000), "\n";
print binary_search(\@big, 123456789), "\n";