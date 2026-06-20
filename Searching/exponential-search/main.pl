use strict;
use warnings;
use POSIX qw(floor);

# Exponential Search is an efficient searching algorithm designed for sorted arrays that finds a
# target element by first finding a localized range and then performing a traditional binary search
# within that range. It is also known as doubling search, galloping search, or finger search
#
# arr    - array reference to search through
# target - value to search for
#
# returns index of target value, or -1 if not found
#
# Best Case:    O(1)
# Worst Case:   O(log(n))
# Average Case: O(log(n))
# Space Complexity: O(log(n))

sub binary_search {
    my ($arr, $target, $low, $high) = @_;

    while ($low <= $high) {
        my $mid = $low + int(($high - $low) / 2);

        if ($arr->[$mid] == $target) {
            return $mid;
        } elsif ($arr->[$mid] < $target) {
            $low = $mid + 1;
        } else {
            $high = $mid - 1;
        }
    }

    return -1;
}

sub exponential_search {
    my ($arr, $target) = @_;

    my $size = scalar(@$arr);
    return -1 if $size == 0;

    return 0 if $arr->[0] == $target;

    my $bound = 1;

    while ($bound < $size && $arr->[$bound] <= $target) {
        $bound *= 2;
    }

    my $low  = floor($bound / 2);
    my $high = $bound < $size ? $bound : $size - 1;

    return binary_search($arr, $target, $low, $high);
}

print "EMPTY ARRAY\n";
print exponential_search([], 10), "\n";

print "\nSINGLE ELEMENT\n";
print exponential_search([999999999], 999999999), "\n";
print exponential_search([999999999], 1), "\n";

print "\nTWO ELEMENTS\n";
print exponential_search([10, 20], 10), "\n";
print exponential_search([10, 20], 20), "\n";
print exponential_search([10, 20], 15), "\n";

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

print exponential_search($large_vals, -2147483648), "\n";
print exponential_search($large_vals, 0), "\n";
print exponential_search($large_vals, 2147483647), "\n";
print exponential_search($large_vals, 123), "\n";

print "\nDUPLICATES\n";
my $dup = [7, 7, 7, 7, 7, 7, 7];

print exponential_search($dup, 7), "\n";
print exponential_search($dup, 8), "\n";

print "\nNEGATIVE NUMBERS\n";
my $negatives = [-50, -20, -10, -5, -1];

print exponential_search($negatives, -10), "\n";
print exponential_search($negatives, -51), "\n";

print "\nLARGE ARRAY\n";
my @big;

for my $i (0..9999) {
    push @big, $i * 3;
}

print exponential_search(\@big, 0), "\n";
print exponential_search(\@big, 3 * 5000), "\n";
print exponential_search(\@big, 3 * 9999), "\n";
print exponential_search(\@big, 1234567), "\n";