If you need to maintain a specific order, use an array of key-value pairs or a hash that preserves insertion order (available in newer Perl versions).  For example, using an array:

my @array = (['a', 1], ['b', 2], ['c', 3]);
foreach my $pair (@array) { print "$pair->[0] => $pair->[1]\n"; }

Or, in Perl 5.26 and later, you could leverage the fact that hashes maintain insertion order:

my %hash = (a => 1, b => 2, c => 3);
foreach my $key (keys %hash) { print "$key => $hash{$key}\n"; }  #Now predictable order