#!/usr/bin/perl
use warnings;
use strict;
{
my $x = 10;

my $xr = \$x;

# change $x via $xr
$$xr = $$xr * 2;

print("$x\n"); # 20
print("$$xr \n");  # 20
print("$xr\n"); # SCALAR(0x1d2e6e4)
print("\n");
}
#######################
{
my @a = (1..5);
my $ar = \@a;

my $i = 0;
for(@$ar){
    print("$ar->[$i++] \n");
}
}
########################
{
my %months= ( Jan => 1,
	      Feb => 2,
	      Mar => 3,
	      Apr => 4,
	      May => 5,
	      Jun => 6,
	      Jul => 7,
	      Aug => 8,
	      Sep => 9,
	      Oct => 10,
	      Nov => 11,
	      Dec => 12);

my $monthr = \%months;

for(keys %$monthr){
    print("$_  = $monthr->{$_}\n");
}
}
