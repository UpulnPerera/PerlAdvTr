#!/usr/bin/perl
use 5.010;
use warnings;
use strict;
use Data::Dumper qw(Dumper);

my $filename = shift || 'names_groups.txt';
my %groups_of;
my %members_of;

open my $fh, '<', $filename or die;
while (my $line = <$fh>) {
	chomp $line;
	my ($name, $groups_str) = split /:/, $line;
	my @groups = split /,/, $groups_str;
	$groups_of{ $name } = \@groups;
	for my $group (@groups) {
		push @{ $members_of{$group} }, $name;
	}
}

print Dumper \%groups_of;
say '------------------';
print Dumper \%members_of;