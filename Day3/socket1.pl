#!/usr/bin/perl -w
# Filenmae : server.pl

use strict;
use Socket;

# use port 7890 as default
my $port = shift || 7890;
my $proto = getprotobyname('tcp');
my $server = "localhost"; # Host IP running the server

# create a socket, make it reusable
socket(SOCKET, PF_INET, SOCK_STREAM, $proto)
	or die "Can't open socket $!\n";
setsockopt(SOCKET,SOL_SOCKET, SO_REUSEADDR, 1)
	or die "Can't set socket option to SO_REUSEADDR $!\n";
	
# bind to a port, then listen
bind(SOCKET,pack_sockaddr_in($port,inet_aton($server)))
	or die "Can't bind to port $port\n";
	
listen(SOCKET, 5) or die "listen: $!";
print "SERVER started on port $port\n";

# accepting a connection
my $client_addr;
while ($client_addr = accept(NEW_SOCKET, SOCKET)) {
	# send them a message, close onnection
	# my $name = hethostbyaddr($client_addr, AF_INET);
	my $name = "client";
	print NEW_SOCKET "Hello $name";
	print "cponnection recieved from $name\n";
	close NEW_SOCKET;
}
	
