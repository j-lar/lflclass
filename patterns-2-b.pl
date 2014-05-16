#!/usr/bin/perl

#Alter exercise A by adding word boundary anchors to the pattern. 

print `clear`;
$_ = "happy birthday";
if (/\bh.+\s\bb./) {
	print "it might say happy birthday...\n";
}