#!/usr/bin/perl

use strict; use warnings;
use FindBin;

use vars qw($LIB);

BEGIN {
    $LIB ="$FindBin::Bin/../lib";
}

use lib $LIB;

use DBIx::DataModel::Schema::Generator;

use RoseConf qw(%c);

my $dsn = "dbi:mysql:database=sakila;host=$c{host}";

my $gen = DBIx::DataModel::Schema::Generator->new(-schema => 'DMSchema', -dir => '../lib');
$gen->fromDBI
  (
   $dsn, $c{username}, $c{password}, { RaiseError => 1 } 
  ) ;
