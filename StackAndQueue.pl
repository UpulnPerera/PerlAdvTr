#!/usr/bin/perl

## Simple Data Structures

# A Stack

print "Making a stack\n"; 
@stack = qw( awk bash chmod );
print "Ïnitial stack:\n @stack \n";
push (@stack, "diff");
print "Push item on stack:\n @stack \n";
$item = "Emacs";
push (@stack, $item);
print "Push item on stack:\n @stack \n";
$top = pop @stack;
print "Popping top of stack:\n $top\n";
print "Final stack:\n @stack \n\n";
print "-------------------------------------------------------\n";

# A Queue

print "Making a \"First In First Out\" Queue\n";
@queue = qw( lpr mcopy ps );
print "Ïnitial queue:\n @queue \n";
unshift (@queue, "kill");
print "Add item to queue:\n @queue \n";
$item = "df";
unshift (@queue, $item);
print "Add item to queue:\n @queue \n";
$fifo = pop @queue;
print "Remove FIFO item: $fifo\n";
print "Final queue:\n @queue \n";
print "--------------------------------------------------------\n";

# Linked Lists

print "Making Linked Lists\n";
## Method #1 using 2D Arrrays

## Method #2 Reference Variables, or Pointers

@links = qw( 2 Null 1);

print "Üsing Pointers\n";

@nodes = qw (finger:Null whois:Null who:Null);
for ($i = 0; $i <= $#nodes; $i++)
	{ 	$ptr = \$nodes[$i];
		@data = split(/:/,$$ptr);
		print "Before: $ptr @data ";
		$data[1] = $links [$i];
		print "-> #data \n";
		$$ptr = join ':',@data;
	}
	
print "\n\n";
print "------------------------------------------------------------\n";	

## Method #3 - Using a Hash