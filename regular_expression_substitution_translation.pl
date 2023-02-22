#!/usr/bin/perl
use warnings;
use strict;



#########replace words new york by New York in a string
{
  my $str = 'new york city';

$str =~ s/new york/New York/;

print $str, "\n";
}

############### In case you want to replace all occurrences of new york in the string
{
my $str =  <<EOF;
new york city is beautiful. Have you ever been to new york city?;
EOF

$str =~ s/new york/New York/g;

print $str, "\n";
}

##################### You can, of course, use the regex modifier /g together with /i (ignore case) to replace all occurrences of a string in-case-sensitively

{
my $str =  <<EOF;
New yorK city is beautiful. Have you ever been to nEw yOrk city?;
EOF

$str =~ s/new york/New York/gi;

print $str, "\n";

my $count = ($str =~ s/new york/New York/gi);
print $count, "\n";
}

#####################  The expression returns the number of replacements made. The translation operator tr/// is useful in some cases, for example, if you want to count the number
#of full-stops that appear in a string, you can use the expression in the following program


{
  my $str = "I'mfine.Thankyou.";
  my $count = ($str =~ tr/././);
  print $count, "\n";
  #Result is 2
}

{
  my $str = "I'mfineThankyou.";
  my $count = ($str =~ tr/././);
  print $count, "\n";
  #Result is 1
}
