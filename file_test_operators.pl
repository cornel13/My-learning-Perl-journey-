#!/usr/bin/perl
use warnings;
use strict;
{
my $filename = '/home/cornel/util/file1.txt';
if(-e $filename){
   print("File $filename exists\n");
}else{
   print("File $filename does not exists\n");
}
}

#Using multiple Perl file test operators
{
  my $filename = '/home/cornel/util/file1.txt';
  if(-e -f -r $filename){
     print("File $filename exists and readable\n");
  }
}
