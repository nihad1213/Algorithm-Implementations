use strict;
use warnings;
use utf8;

sub own_strlen {
    my ($s) = @_;
    my $count = 0;

    use bytes;
    
    while ($count < length($s)) {
        $count++;
    }

    return $count;
}

# Tests
print own_strlen("Nihad"), "\n";        # Expected: 5
print own_strlen("Hello World"), "\n";  # Expected: 11
print own_strlen("a"), "\n";            # Expected: 1

# Edge Cases
print own_strlen(""), "\n";             # Expected: 0
print own_strlen(" "), "\n";            # Expected: 1
print own_strlen("   "), "\n";          # Expected: 3
print own_strlen("1234567890"), "\n";   # Expected: 10
print own_strlen("!\n\t\r"), "\n";      # Expected: 4

# Multi-byte / UTF-8 Behavior (byte count)
print own_strlen("😊"), "\n";           # Expected: 4
print own_strlen("Bakı"), "\n";         # Expected: 5
