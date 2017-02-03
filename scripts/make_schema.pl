#!/usr/bin/env perl

use strict;
use warnings;

use DBIx::Class::Schema::Loader qw(make_schema_at);

my @dsn     = 'dbi:SQLite:dbname=app.db';
my %options = (
    dump_directory => './lib'
);

make_schema_at('App::Schema' => \%options, \@dsn);
