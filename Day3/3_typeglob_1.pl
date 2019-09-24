use v5.10; # necessary for say
our $foo = "foo";
our $bar;
say ref *foo{SCALAR}; #SCALAR
say ${ *foo{SCALAR} }; #bar
*bar = *foo;
say $bar; #bar
$bar ='egg';
say $foo; #egg