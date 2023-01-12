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

#print Dumper $list;
#print "lista de liste\n";
#print Dumper $list2;

my $test = [$list, ["display_order_number", "trans_order_id"]];

print "$test->[1]->[1]\n";

#print Dumper $test;

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

#generic.pm
my $obj = Test::BDD::DataWalker->new(
  json_data => $response_content, # Json-ul in care caut, de obicei tot raspunsul
  action    => 'find_key', #actiunea executata (posibile sunt find_key, delete_key, replace_key)
  hash_keys => [$array_name], #daca vine actiunea find_key va cauta ce pasam la aceasta cheie
);

$obj->traverse_data_structure(); # traverseaza recursiv pana gaseste cheia cautata json-ul, si stocheaza cheia si valoarea in atributul
                                  # found_key and value care este un hash
my $data = $obj->found_key_and_value()->{$array_name};
