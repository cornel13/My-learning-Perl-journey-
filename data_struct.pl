use strict;
use warnings;
use Data::Dumper;
# Dumping List

my $list = [
"foo", #primul element din lista
"bar"  #al 2-lea element din lista
];

my $list2 = [
  ["foo","bar"],  #primul element din lista
  ["toto","moto"] #al 2-lea element din lista
];
my $list2_in_one_line = [["foo","bar"],["toto","moto"]];

print Dumper $list;
print "array of arrays\n";
print Dumper $list2;

my $test = [$list, ["display_order_number", "trans_order_id"]];

print "$test->[0]->[1]\n";

print Dumper $test;

my $VAR1 = {
          'foo' => 0,
          'bar' => 0,
          'baz' => 1,
          'bobo'=> 0,
        };
my $cout_values = {};
foreach my $key (keys %{$VAR1}){
  $cout_values->{ $VAR1->{$key} }++;
}
print Dumper $cout_values;

print "$VAR1->{bobo}\n";
