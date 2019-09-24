#!/usr/bin/perl

open (DATA, "<file.txt") or die "Couldn't open file file.txt, $!";
while (<DATA>){
	print "$_";
}

	# >sign indicates that file has to be opened in the writing mode
	Open a file for updating without truncating it -
	
	open (DATA, "+<file.txt") or die "Couldn't open file file.txt, $!";
	
	#To truncate the file first -
	
	open (DATA, "+>	file.txt") or die "Couldn't open file file.txt, $!";
	
	#Apopend mode
	
	open (DATA, ">>file.txt") || die "Couldn't open file file.txt, $!";
	
	#you can not read from it unless you also place a plus sign in front of it -
	
	open (DATA, "+>>file.txt") || die "Couldn't open file file.txt, $!";

