#!/usr/bin/perl
#write to file

use strict;

my $file_name = "report.txt";
open(my $fh, '>>', $file_name);
print $fh "My first report generated by perl\n";
print $fh "My Second report generated by perl\n";
close $fh;
print "done\n";

# Read from file
open(DATA, "<$file_name") or die "$!";
while (<DATA>){
print "$_";
}