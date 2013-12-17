use strict;
use warnings;

my $snippet = 1;

##########################
# Time related
##########################
if ($snippet == 1) {
### Epoch time
my $now = time();
print("Epoch Time Now:$now\n");
my $gerrit_last_updated = '2013-12-05 10:03:00 PDT';
my ($sec,$min,$hour,$day,$mon,$year);
if ($gerrit_last_updated =~ m/([0-9]{4})-([0-9]{2})-([0-9]{2}) ([0-9]{2}):([0-9]{2}):([0-9]{2}).*$/) {
    $year=$1; $mon=$2;$day=$3;$hour=$4;$min=$5;$sec=$6;
} else {
    print("Time in Gerrit has wrong format.\n");
    exit 1;
}
use Time::Local;
$mon = $mon-1;
my $time = timelocal($sec,$min,$hour,$day,$mon,$year); 
print("Human:$year-$mon-$day:$hour:$min:$sec Epoch:$time\n");
}#-------------------------

