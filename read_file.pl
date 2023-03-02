#!/usr/bin/perl
use warnings;
use strict;

my $filename = '/home/cornel/util/file1.txt';

open(FH, '<', $filename) or die $!;

while(<FH>){
   print $_;
}

close(FH);
