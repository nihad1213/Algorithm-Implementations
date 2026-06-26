#!/usr/bin/env perl

use strict;
use warnings;
use Data::Dumper;

# Calculates the factorial of a number using recursion. The factorial of a
# non-negative integer n is the product of all positive integers less than
# or equal to n. This algorithm calls itself n times, multiplying the result
# at each step until it reaches the base case.

# n - the non-negative integer whose factorial is to be calculated
# returns the factorial of n
# dies if n is not an integer or if n is negative

# Best Case: O(1)
# Worst Case: O(n)
# Average Case: O(n)
# Space Complexity: O(n)

sub factorial {
    my ($n) = @_;

    die "n must be an integer\n" unless $n =~ /^-?\d+$/;

    die "Factorial is undefined for negative numbers\n" if $n < 0;

    return 1 if $n == 0;

    return $n * factorial($n - 1);
}

print factorial(14), "\n";