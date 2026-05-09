=pod

=head1 Linear Search

Linear search, or sequential search,
is the simplest method for finding a
specific value within a collection of data.

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

use strict;
use warnings;

sub linearSearch {
    my ($arr, $target) = @_;

    for (my $i = 0; $i < @$arr; $i++) {
        if ($arr->[$i] == $target) {
            return $i;
        }
    }

    return -1;
}

print linearSearch([1, 2, 3, 4, 5], 3), "\n";
print linearSearch([1, 2, 3, 4, 5], 6), "\n";
print linearSearch([], 1),              "\n";
print linearSearch([1, 2, 3, 4, 5], 1), "\n";
print linearSearch([1, 2, 3, 4, 5], 5), "\n";