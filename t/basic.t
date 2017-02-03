use strict;
use warnings;

use Test::More;
use App::Schema;

use_ok('App::Schema');

my $schema  = App::Schema->connect('dbi:SQLite:app.db');
my $user_rs = $schema->resultset('User');

# Check custom accessors are defined
can_ok($user_rs->result_class, qw(fullname));

is($user_rs->find(1)->fullname,
  'Bob Doe', 'Should read from set using custom accessor');

# Check custom methods are defined
can_ok($user_rs, qw(age_less_than));

is($user_rs->age_less_than(50)->fullname,
  'Sarah Connor', 'Should perform search using custom method');

done_testing;
