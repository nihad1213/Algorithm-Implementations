=pod

=head1 Sentinel Linear Search

Sentinel Linear Search is an optimized version of the linear search algorithm.
Number of comparisons is reduced by using a sentinel value to mark the end of the array.

=head2 Parameters

=over 4

=item * C<$arr> - Array reference to search through

=item * C<$target> - The value to search for

=back

=head2 Returns

The index of the target value, or -1 if not found

=head2 Complexity

  Best Case:    O(1)
  Worst Case:   O(n)
  Average Case: O(n)
  Space:        O(1)

=cut

sub sentinel_linear_search {
    my ($arr_ref, $target) = @_;

    my $n = scalar(@$arr_ref);
    return -1 if $n == 0;

    my $last = $arr_ref->[$n - 1];

    $arr_ref->[$n - 1] = $target;

    my $i = 0;

    while ($arr_ref->[$i] != $target) {
        $i++;
    }

    $arr_ref->[$n - 1] = $last;

    if ($i < $n - 1 || $last == $target) {
        return $i;
    }

    return -1;
}

print sentinel_linear_search([1, 2, 3, 4, 5], 3), "\n";
print sentinel_linear_search([1, 2, 3, 4, 5], 6), "\n";
print sentinel_linear_search([], 1),              "\n";
print sentinel_linear_search([1, 2, 3, 4, 5], 1), "\n";
print sentinel_linear_search([1, 2, 3, 4, 5], 5), "\n";