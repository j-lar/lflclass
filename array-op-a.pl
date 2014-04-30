#!/usr/bin/perl

print `clear`;
print "Please enter your last name\n";
chomp($input = <STDIN>);
push @name, $input;
print "Please enter your first name\n";
chomp($input = <STDIN>);
push @name, $input;
print "Please enter your middle name\n";
chomp($input = <STDIN>);
push @name, $input;

$m_name = pop @name;
$f_name = pop @name;
$l_name = pop @name;

print "\nHello $f_name $m_name $l_name!\n";