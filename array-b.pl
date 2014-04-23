#!/usr/bin/perl

$season[0] = "Spring";
$season[1] = "Summer";
$season[2] = "Fall";
$season[3] = "Winter";
$clear_screen = `clear`;
print `clear`;
print "Enter a number between 1 and 4. Enter 'done' when finished.\n";
print "-------\n\n";
while(chomp($input = <STDIN>))
 {
  if(lc$input eq "done")
   {
    print "Ok, Goodbye.\n\n";
	last;
   }
  elsif($input < 1 || $input > 4)
   {
    print "Can you read? I said enter a number between 1 and 4\n";
	print "-------\n\n";
	next;
   }
  elsif($input >= 1 && $input <= 4)
   {
    local $| = 1;
	print "* "; sleep(1); print "* "; sleep(1);
	print "Season $input is $season[$input - 1]\n\n";
	sleep(1);
	print "-------\n";
	print "Enter a number between 1-4\n";
	print "-------\n\n";
   }
  }