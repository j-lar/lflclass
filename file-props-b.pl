#!/usr/bin/perl
#use warnings;
use strict;
#system("clear");

#There are 3 files in your home directory: a.txt, b.txt, and c.txt. Use the Unix "id" command at the
#command prompt to determine your userid (uid) and groupid (gid) that will be used in the program. Have
#the program use the chown command in conjunction with glob to change the owner of all of the .txt files.
#Make sure to track the number of files that were changed...print this value out at the end of the
#program...the value should be three. NOTE: The fact that these files are already owned by you has no
#bearing on the success of the 'chown' function...it should still return a value of three.

my $home_dir = "/home/jlarsen";
my $uid;
my $gid;
my $id_string = `id`;
if ( $id_string =~ /\D+\=(\d+)\D+\=(\d+).*/ ) {
	$uid = $1;
	$gid = $2;
}
opendir DIR, $home_dir or die "Couldn't open $home_dir for reading: $!";
my $num_files = chown $uid, $gid, glob "$home_dir/[a-c].txt";
chown $uid, $gid, glob "$home_dir/*.txt";
print "$num_files files in $home_dir had their permissions changed.\n";