#!/usr/bin/perl

open( FILE, "names_groups.txt" ) || die "Enable to open test file";
$char = getc( FILE );
print "First Character is $char\n";
$char = getc( FILE );
print "Second Character is $char\n";
# Now check the position of the reaad pointer.
$position = tell( FILE );
print "Position with in file $position\n";
close(FILE);
