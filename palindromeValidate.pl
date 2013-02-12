#!/usr/bin/perl
#
# Basic script for reading in a file
# storing a file as a string
# reversing the string
# and checking to see if the reverse
# equals the original
#

use strict;
use warnings;

my $forward;

open(my $FH, '<', 'shortPalindrome.txt') or die "Error: $!";
while( <$FH> ) {
my $line = $_;
chomp($line);
$forward .= $line;
}
close $FH or die "Error: $!";

######## Make $forward lower case ###################
$forward = lc($forward);
#####################################################
########### Remove punctuation and spaces ###########
$forward =~ s/\s|…|\’|\”|\“|[[:punct:]]//g;
#####################################################
my $reverse = reverse $forward;

print $forward, "\n\n";
print $reverse, "\n";

if ($forward eq $reverse) { 
	print "It's a palindrome!\n";
} else {
	print "It's not a palindrome!\n";
}
