use strict;
use warnings;

use feature 'say';

# true values

my $true = 1;
say 'true' if $true;

$true = 'dsad';
say 'true' if $true;

$true = ' ';
say 'true' if $true;

# false values

my $false = 0;
say 'false' if !$false;

$false = '0';
say 'false' if !$false;

$false = undef;
say 'false' if !$false;

$false = '';
say 'false' if !$false;

$false = ' ';
say 'false' if !$false;


my $config = {
  true => 1,
  false => 0,
  val => undef,
};
say $config->{true} if $config->{true};
say $config->{false} if !$config->{false};
say "|$true|" if not defined $config->{val};
say $config->{false} if exists $config->{false};
my $config2 = {};
say 'aici' if $config2;
