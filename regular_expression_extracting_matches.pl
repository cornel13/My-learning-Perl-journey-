#!/usr/bin/perl
use warnings;
use strict;
use Data::Dumper;


# my $time = localtime();
# print $time, "\n";
# print ("$1 \n") if($time =~ /(\d\d:\d\d:\d\d)/);

#######
my $text = <<END;
name: Antonio Vivaldi, period: 1678-1741
name: Andrea Zani,period: 1696-1757
name: Antonio Brioschi, period: 1725-1750
END

my %composers;

for my $line (split /\n/, $text){
    print $line, "\n";
    if($line =~ /name:\s+(\w+\s+\w+),\s+period:\s*(\d{4}\-\d{4})/){
    	$composers{$1} = $2;
    }
}

print Dumper(\%composers);
