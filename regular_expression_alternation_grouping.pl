#!/usr/bin/perl
use warnings;
use strict;

my @words = ('housemaid',
	     'housemate',
	     'household',
	     'houseman',
	     'house');

for(@words){
   print("$_\n") if(/house(maid|mate|man)/);
}
