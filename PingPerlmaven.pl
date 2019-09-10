use 5.010;

use Net::Ping;
use IO::Socket;
use IO::Select;

my $p = Net::Ping->new();
if ($p->ping('perlmaven.com')) {
	say 'alive';
}