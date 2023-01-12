#!/usr/bin/perl
use warnings;
use strict;

my @words = ('dog','fog','chicken');

for(@words){
   print("$_\n") if(/[dfr]og/); # matches dog, fog, and rog
}

#The following example demonstrates how to use predefined character classes:
my $time = localtime();
print $time, "\n";
print "Match found\n" if($time =~ /\d\d:\d\d:\d\d/);
