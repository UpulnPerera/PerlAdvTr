use 5.010;

use Net::Ping;
use IO::Socket;
use IO::Select;

my $p = Net::Ping->new();
my $sitearray = ('perlmaven.com','google.com');
@sites = split(',', $sitearray);
if ($p->ping(@sites[])) {
	say 'alive';
}