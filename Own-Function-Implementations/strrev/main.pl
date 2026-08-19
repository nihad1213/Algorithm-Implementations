sub own_strrev {
    my ($str) = @_;
    my $len = length($str);

    for (my $i = 0; $i < int($len / 2); $i++) {
        (substr($str, $i, 1), substr($str, $len - 1 - $i, 1)) = (substr($str, $len - 1 - $i, 1), substr($str, $i, 1));
    }

    return $str;
}

print own_strrev("Nihad"), "\n";