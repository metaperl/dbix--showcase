#!perl -T

use Test::More tests => 1;

BEGIN {
    use_ok( 'DBIx::Showcase' );
}

diag( "Testing DBIx::Showcase $DBIx::Showcase::VERSION, Perl $], $^X" );
