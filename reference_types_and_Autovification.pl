#!/usr/bin/perl
use warnings;
use strict;

{
my $ar = [1..5];

# loop over the array elements
for(@$ar){
   print("$_  "); # 1 2 3 4 5
}

print("\n");
print("\n");
}

#to create anonymous hash references, you use curly brackets {}
{
my $address = { "building" => 1000,
                "street" => "ABC street",
                "city"   => "Headquarter",
                "state" => "CA",
                "zipcode" => 95134,
                "country" => "USA"
              };

print $address->{building};
print $address->{street};
print("\n");
print("\n");
}


############################## Perl symbolic references
#!/usr/bin/perl
# use warnings;
# use strict;
#
# my $foo->{address}->{building} = 1000;
#
# print $foo, "\n"; # HASH(0x3bad24)
# print $foo->{address}, , "\n"; # HASH(0x3bae04)
# print $foo->{address}->{building},"\n"; # 1000




########################Autovivification
{
my $foo->{address}->{building} = 1000;

print $foo, "\n"; # HASH(0x3bad24)
print $foo->{address}, , "\n"; # HASH(0x3bae04)
print $foo->{address}->{building},"\n"; # 1000
}
