#!/usr/bin/perl
use warnings;
use strict;

{
my $str = <<END;
This is the sample text
that is used to write to file
END

my $filename = '/home/cornel/util/test3.txt';

open(FH, '>', $filename) or die $!;

print FH $str;

close(FH);

print "Writing to file successfully!\n";
}

#The following example demonstrates how to read the content of one file and write it another file.

my $src = '/home/cornel/util/test3.txt';
my $des = '/home/cornel/util/test4.txt';

# open source file for reading
open(SRC,'<',$src) or die $!;

# open destination file for writing
open(DES,'>',$des) or die $!;

print("copying content from $src to $des\n");

while(<SRC>){
   print DES $_;
}

# always close the filehandles
close(SRC);
close(DES);

print "File content copied successfully!\n";
