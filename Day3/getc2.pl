#!/usr/bin/perl

use File::Copy;
copy ("file1.txt","file1.txt.bk") or die "Copy failed: $!";

#getc FILEHANDLE
#getc

#Rename a file
rename ("file1.txt", "file2.txt");

#Delete a file
unlink ("file2.txt");