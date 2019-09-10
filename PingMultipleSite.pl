use 5.010;

use Net::Ping;
use IO::Socket;
use IO::Select;

my $p = Net::Ping->new();
my $list1 = "C:\Users\Student\Desktop\PerlAdvTraining\PerlAdvTr\SitList1";

for $q in `cat $list1`
	do echo $q;
	
if ($p->ping($q)) {
	say 'alive';
else
	say 'Not alive';
end if	
}
done;
