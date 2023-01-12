#!/usr/bin/perl
use warnings;
use strict;


# Passing an array to a subroutine
# my @a = (1,3,2,6,8,4,9);
#
# my $m = &max(\@a);
#
# print "The max of @a is $m\n";
#
# sub max{
#     my $aref = $_[0];
#     my $k = $aref->[0];
#
#     for(@$aref){
#         $k = $_ if($k < $_);
#     }
#     return $k;
# }


###################### Returning an array from a subroutine

my @a = (1,3,2,6,7);
my @b = (8,4,9);

my @c = pops(\@a,\@b);
print("@c \n"); # 7, 9

sub pops{
    my @ret = ();

    for my $aref(@_){
        push(@ret, pop @$aref);
    }
    return @ret;
}
