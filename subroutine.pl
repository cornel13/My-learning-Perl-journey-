#!/usr/bin/perl
use warnings;
use strict;

{
sub say_something{
     print "Hi, this is the first subroutine\n";
}
say_something();
}

###################The following example demonstrates how to use argument lists in the subroutine:
{
print &sum(1..10), "\n";

sub sum{
    my $total = 0;
    for my $i(@_){
        $total += $i;
    }
    return $total;
}
}

#################A subroutine implicitly returns a value that is the result of the last expression in its body
{
print &say_hi , "\n";
sub say_hi{
    my $name = 'Bob';
    print "Hi $name \n";
    $name;
}
#Explicit returning value with return statement
print &say_hi , "\n";
sub say_hi{
    my $name = 'Bob';
    print "Hi $name \n";
    return $name;
}
}

####################### For example, a subroutine may return an undefined value undef when a particular parameter is not supplied as the following example:
{
my @a = ();
my $j = min(@a);

if(defined $j){
   print("Min of @a is $j \n");
}else{
   print("The array is empty.\n");
}

my @b = (100,12,31);
my $k = min(@b);

if(defined $k){
  print("Min of @b is $k \n");
}else{
   print("The array b is empty.\n");
}

sub min{
   my $m = shift;
   return undef unless defined $m;
   for (@_){
      $m = $_ if $m > $_;
   }
   return $m;
}
}
