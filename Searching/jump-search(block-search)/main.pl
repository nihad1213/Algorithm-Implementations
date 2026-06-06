use strict;
use warnings;
use POSIX qw(floor);

# Jump Search (also known as block search) is a searching algorithm for
# sorted arrays that checks fewer elements than a linear
# search by jumping ahead by fixed steps.
#
# arr    - array reference to search through
# target - value to search for
#
# returns index of target value, or -1 if not found
#
# Best Case:    O(1)
# Worst Case:   O(sqrt(n))
# Average Case: O(sqrt(n))
# Space Complexity: O(1)

sub jump_search {
    my ($arr, $target) = @_;

    my $size = scalar(@$arr);
    return -1 if $size == 0;

    my $step = floor(sqrt($size));
    my $prev = 0;

    while ($prev < $size && $arr->[$prev] < $target) {
        my $next = $prev + $step;

        $next = $size if $next > $size;

        if ($arr->[$next - 1] >= $target) { last; }

        $prev = $next;

        return -1 if $prev >= $size;
    }

    my $end = $prev + $step;
    $end = $size if $end > $size;

    for my $i ($prev .. $end - 1) {
        return $i  if $arr->[$i] == $target;
        return -1  if $arr->[$i] > $target;
    }

    return -1;
}

print "EMPTY ARRAY\n";
print jump_search([], 10), "\n";

print "\nSINGLE ELEMENT\n";
print jump_search([999999999], 999999999), "\n";
print jump_search([999999999], 1), "\n";

print "\nTWO ELEMENTS\n";
print jump_search([10, 20], 10), "\n";
print jump_search([10, 20], 20), "\n";
print jump_search([10, 20], 15), "\n";

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

print jump_search($large_vals, -2147483648), "\n";
print jump_search($large_vals, 0), "\n";
print jump_search($large_vals, 2147483647), "\n";
print jump_search($large_vals, 123), "\n";

print "\nDUPLICATES\n";
my $dup = [7, 7, 7, 7, 7, 7, 7];

print jump_search($dup, 7), "\n";
print jump_search($dup, 8), "\n";

print "\nNEGATIVE NUMBERS\n";
my $negatives = [-50, -20, -10, -5, -1];

print jump_search($negatives, -10), "\n";
print jump_search($negatives, -51), "\n";

print "\nLARGE ARRAY\n";
my @big;

for my $i (0..9999) {
    push @big, $i * 3;
}

print jump_search(\@big, 0), "\n";
print jump_search(\@big, 3 * 5000), "\n";
print jump_search(\@big, 3 * 9999), "\n";
print jump_search(\@big, 1234567), "\n";