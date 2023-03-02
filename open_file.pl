#!/usr/bin/perl
use warnings;
use strict;

my $filename = '/home/cornel/util/file1.txt';

open(FH, '<', $filename) or die $!;

print("File $filename opened successfully!\n");

close(FH);
