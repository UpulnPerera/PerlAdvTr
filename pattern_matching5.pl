#!/usr/bin/perl

$string = "The timr is: 12:31:02 on 4/12/00";

$string =~/:\s+/g;
($time) = ($string =~/\G(\d+:\d+:\d+)/);
$string =~/.+\s+/g;
($date) = ($string =~m{\G(\d+/\d+/\d+)});

print "Time: $time, Date:$date\n";

write perl code to find position of "R" in the sentence "WHO RUN THIS COUNTRY"
