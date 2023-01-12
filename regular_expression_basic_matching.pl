#regular expression matching
#!/usr/bin/perl
use warnings;
use strict;

my $s = 'Perl regular expression is powerful';

print "match found\n" if( $s =~ /ul/);
print("\n");


#regular expression NOT matching

my @words= (
	   'Perl',
	   'regular expression',
	   'is',
	   'a very powerul',
	   'feature'
	);

foreach(@words){
   print("$_ \n") if($_ !~ /er/);
}
print("\n");
#If you want to match a pattern that contains a forward slash (/) character

# my @html = (
# 	   '<p>',
# 	   'html fragement',
# 	   '</p>',
# 	   '<br>',
# 	   '<span>This is a span</span>'
# 	);
#
# foreach(@html){
#    print("$_ \n") if($_ =~ m"/");
# }
# print("\n");

#To instructs Perl to match a pattern case insensitive, you need to add a modifier i as the following example:

# my $s = "Regular expression";
# print "match\n" if $s =~ /Expression/i



 #Same sequence of characters multiple times
my @words = ("available", "avatar", "avalon");

foreach(@words){
   print $_, "\n" if(/a*r+/);
}
